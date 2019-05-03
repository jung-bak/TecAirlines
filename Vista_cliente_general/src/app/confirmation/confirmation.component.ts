import { Component, OnInit } from '@angular/core';
import { DataService } from '@app/_services';

@Component({
  selector: 'app-confirmation',
  templateUrl: './confirmation.component.html',
  styleUrls: ['./confirmation.component.css']
})
export class ConfirmationComponent implements OnInit {

  cardNumber = '';
  cart: any[];
  totalA: number;

  constructor(
    private data: DataService,
  ) { }

  ngOnInit() {
    this.data.currentCardNumber.subscribe(data => this.cardNumber = data.toString().substr(data.toString().length - 4));
    this.data.currentCart.subscribe(data => this.cart = data);
    this.data.currentAmount.subscribe(data => this.totalA = data);
  }

}
