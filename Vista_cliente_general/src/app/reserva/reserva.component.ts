import { Component, OnInit } from '@angular/core';
import { DataService } from '@app/_services';

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
  dateL: any[];
  atCero: boolean = true;

  constructor(
    private date: DataService,
  ) { }

  ngOnInit() {
    this.date.currentDateRange.subscribe(dateRange => this.dateL = dateRange);
  }

  next() {
    if (this.perce === 0) {
      this.sSeats = !this.sSeats;
      this.sPay_info = true;
      this.perce += 33;
      this.atCero = false;
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
      this.atCero = true;
    }
  }

}
