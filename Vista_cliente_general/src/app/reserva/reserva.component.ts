import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-reserva',
  templateUrl: './reserva.component.html',
  styleUrls: ['./reserva.component.css']
})
export class ReservaComponent implements OnInit {

  public perce = 0;
  public sSeats = true;
  public sPay_info = false;
  public sConfirmation = false;
  constructor() { }

  ngOnInit() {
  }

  next() {
    if (this.perce === 0) {
      this.sSeats = !this.sSeats;
      this.sPay_info = true;
      this.perce += 33;
    } else if (this.perce === 33) {
      this.sPay_info = !this.sPay_info;
      this.sConfirmation = true;
      this.perce += 33;
    }
  }

  back() {
    if (this.perce === 66) {
      this.sConfirmation = !this.sConfirmation;
      this.sPay_info = !this.sPay_info;
      this.perce -= 33;
    } else if (this.perce === 33) {
      this.sPay_info = !this.sPay_info;
      this.sSeats = !this.sSeats;
      this.perce -= 33;
    }
  }

}
