import { Component, OnInit } from '@angular/core';
import { DataService } from '@app/_services';

@Component({
  selector: 'app-unico',
  templateUrl: './unico.component.html',
  styleUrls: ['./unico.component.css']
})
export class UnicoComponent implements OnInit {

  public allowCustom: true;
  public listOrigin: Array<string> = ['casa, Barrancas', 'casa2'];
  public listDest: Array<string> = ['trabajo, TEC', 'trabajo2'];
  public listTick: Array<number> = [1, 2, 3, 4, 5];

  range: Array<string> = [];
  origin: string;
  dest: string;
  date: string;
  ticks: number;
  promCode: number;

  response: string;

// tslint:disable-next-line: no-inferrable-types
  show: boolean = false;
  label = 'Abrir';

  constructor(
    private data: DataService
  ) { }

  ngOnInit() {
    this.data.currentDateRange.subscribe(dRange => this.range = dRange);
    this.data.currentOrg.subscribe(dOrg => this.origin = dOrg);
    this.data.currentDest.subscribe(dDest => this.dest = dDest);
    this.data.currentCticks.subscribe(dTicks => this.ticks = dTicks);
    this.data.currentPcode.subscribe(dPromC => this.promCode = dPromC);
    this.data.currentSingleDate.subscribe(dDate => this.date = dDate);
    this.data.currentResponse.subscribe(data => this.response = data);
  }

  updateData() {
    this.data.changeDate(this.date);
    this.data.changeOrg(this.origin);
    this.data.changeDest(this.dest);
    this.data.changeCticks(this.ticks);
    this.data.changePCode(this.promCode);
    this.data.searchVueloOneWay();
  }

  updateStatus() {
    this.show = !this.show;
    if (this.show) {
      this.label = 'Cerrar';
    } else {
      this.label = 'Abrir';
    }
  }
}
