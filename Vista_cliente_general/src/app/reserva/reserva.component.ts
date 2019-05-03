import { Component, OnInit } from '@angular/core';
import { DataService } from '@app/_services';

@Component({
  selector: 'app-reserva',
  templateUrl: './reserva.component.html',
  styleUrls: ['./reserva.component.css']
})
export class ReservaComponent implements OnInit {

  perce = 0;
  sSeats: boolean;
  sPay_info: boolean;
  sConfirmation: boolean;
  dateL: any[];
  atCero: boolean;
  atFifty: boolean;
  atCien: boolean;

  constructor(
    private data: DataService,
  ) { }

  ngOnInit() {
    this.data.currentDateRange.subscribe(dateRange => this.dateL = dateRange);
    this.data.currentSseats.subscribe(data => this.sSeats = data);
    this.data.currentSpay_info.subscribe(data => this.sPay_info = data);
    this.data.currentSconfirmation.subscribe(data => this.sConfirmation = data);
    this.data.currentPerce.subscribe(data => this.perce = data);
    this.data.currentAtCero.subscribe(data => this.atCero = data);
    this.data.currentAtFifty.subscribe(data => this.atFifty = data);
    this.data.currentAtCien.subscribe(data => this.atCien = data);
  }

  next() {
    this.data.changeSseats(!this.sSeats);
    this.data.changeSpay_info(true);
    this.data.changePerce(this.perce + 50);
    this.data.changeAtCero(false);
    this.data.changeAtFifty(true);
  }

  back() {
    if (this.perce === 100) {
      this.data.changeSconfirmation(!this.sConfirmation);
      this.data.changeSpay_info(!this.sPay_info);
      this.data.changePerce(this.perce - 50);
      this.data.changeAtFifty(true);
      this.data.changeAtCien(false);
    } else if (this.perce === 50) {
      this.data.changeSpay_info(!this.sPay_info);
      this.data.changeSseats(!this.sSeats);
      this.data.changePerce(this.perce - 50);
      this.data.changeAtCero(true);
      this.data.changeAtFifty(false);
    }
  }

}
