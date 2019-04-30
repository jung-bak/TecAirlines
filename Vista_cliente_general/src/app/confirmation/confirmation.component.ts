import { Component, OnInit } from '@angular/core';
import { DataService } from '@app/_services';

@Component({
  selector: 'app-confirmation',
  templateUrl: './confirmation.component.html',
  styleUrls: ['./confirmation.component.css']
})
export class ConfirmationComponent implements OnInit {

  numero: number;
  cart: any[];

  constructor(
    private data: DataService,
  ) { }

  ngOnInit() {
    this.data.currentcardNumber.subscribe(number => this.numero = number);
    this.data.currentCart.subscribe(cart => this.cart = cart);
  }

}
