import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { first } from 'rxjs/operators';

import { Order } from '@app/_models';
import { OrderService, AuthenticationService } from '@app/_services';

@Component({templateUrl: './orders.component.html'})
export class OrdersComponent implements OnInit {
  currentOrder: Order;

  currentOrderSubscription: Subscription;
  orders: Order[] = [];

  constructor(
    private router: Router,
    private authenticationService: AuthenticationService,
    private orderService: OrderService
  ) { 
    if (this.authenticationService.currentUserValue) { } else { this.router.navigate(['/']); }
  }

  ngOnInit() {
    this.loadAllOrders();
  }

  deleteOrder(id: number) {
    this.orderService.delete(id).pipe(first()).subscribe(() => {
      this.loadAllOrders()
    });
  }

  private loadAllOrders() {
    this.orderService.getAll().pipe(first()).subscribe(orders => {
      this.orders = orders;
    })
  }

}
