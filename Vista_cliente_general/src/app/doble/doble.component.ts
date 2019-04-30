import { Component, OnInit } from '@angular/core';
import { DataService } from '@app/_services';

@Component({
  selector: 'app-doble',
  templateUrl: './doble.component.html',
  styleUrls: ['./doble.component.css']
})
export class DobleComponent implements OnInit {

  public allowCustom: true;
  public listOrigin: Array<string> = ['casa'];
  public listDest: Array<string> = ['trabajo'];
  public listTick: Array<number> = [1, 2, 3, 4, 5];

  range: Array<string> = [];
  origin: string;
  dest: string;
  ticks: number;
  promCode: number;
  response: string;

  constructor(
    private data: DataService
  ) { }

  ngOnInit() {
    this.data.currentDateRange.subscribe(dRange => this.range = dRange);
    this.data.currentOrg.subscribe(dOrg => this.origin = dOrg);
    this.data.currentDest.subscribe(dDest => this.dest = dDest);
    this.data.currentCticks.subscribe(dTicks => this.ticks = dTicks);
    this.data.currentPcode.subscribe(dPromC => this.promCode = dPromC);
    this.data.currentResponse.subscribe(data => this.response = data);
  }

  updateData() {
    this.data.changeDateRange(this.range);
    this.data.changeOrg(this.origin);
    this.data.changeDest(this.dest);
    this.data.changeCticks(this.ticks);
    this.data.changePCode(this.promCode);
    this.data.searchVueloTwoWay();
  }
}
