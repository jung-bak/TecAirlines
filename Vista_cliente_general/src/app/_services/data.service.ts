import { Injectable } from '@angular/core';
import { BehaviorSubject, Subject } from 'rxjs';
import { HttpClient } from '@angular/common/http';

export interface OneWay {
  Message_Type: string;
  Starts:       string;
  Ends:         string;
  Date:         string;
  Ticks:        number;
  PromCode:     number;
}

export interface TwoWay {
  Message_Type: string;
  Starts:       string;
  Ends:         string;
  dateRange:    string[];
  Ticks:        number;
  PromCode:     number;
}

@Injectable()
export class DataService {

  private response = new BehaviorSubject<string>('');
  currentResponse = this.response.asObservable();

  private userId = new BehaviorSubject<number>(0);
  currentUserId = this.userId.asObservable();

  private cardNumber = new BehaviorSubject<number>(0);
  currentcardNumber = this.cardNumber.asObservable();

  private cart = new BehaviorSubject<any[]>([]);
  currentCart = this.cart.asObservable();

  private dateRange = new BehaviorSubject<string[]>([]);
  currentDateRange = this.cart.asObservable();

  private singleDate = new BehaviorSubject<string>('');
  currentSingleDate = this.singleDate.asObservable();

  private org = new BehaviorSubject<string>('');
  currentOrg = this.org.asObservable();

  private dest = new BehaviorSubject<string>('');
  currentDest = this.dest.asObservable();

  private cTicks = new BehaviorSubject<number>(0);
  currentCticks = this.cTicks.asObservable();

  private pCode = new BehaviorSubject<number>(0);
  currentPcode = this.pCode.asObservable();

  constructor(
    private http: HttpClient,
  ) { }

  changeResponse(r: string) {
    this.response.next(r);
  }

  changeDate(date: string) {
    this.singleDate.next(date);
  }

  changeDateRange(range: string[]) {
    this.dateRange.next(range);
  }

  changeOrg(org: string) {
    this.org.next(org);
  }

  changeDest(dest: string) {
    this.dest.next(dest);
  }

  changeCticks(cTicks: number) {
    this.cTicks.next(cTicks);
  }

  changePCode(pCode: number) {
    this.pCode.next(pCode);
  }

  changeID(id: number) {
    this.userId.next(id);
  }

  changecardNumber(num: number) {
    this.cardNumber.next(num);
  }

  changeCart(newCart: any[]) {
    this.cart.next(newCart);
  }

  searchVueloOneWay() {
    let data_org: string;
    let data_dest: string;
    let data_date: string;
    let data_tickets: number;
    let data_promCode: number;
    this.currentOrg.subscribe(data => data_org = data);
    this.currentDest.subscribe(data => data_dest = data);
    this.currentSingleDate.subscribe(data => data_date = data);
    this.currentCticks.subscribe(data => data_tickets = data);
    this.currentPcode.subscribe(data => data_promCode = data);
    const msg: OneWay =
    JSON.parse('{"Message_Type": "FLIGHT_SEARCH", "Starts": "", "Ends": "", "Date": "", "Ticks": 0, "PromCode": 0}');
    msg.Starts = data_org;
    msg.Ends = data_dest;
    msg.Date = data_date;
    msg.Ticks = data_tickets;
    msg.PromCode = data_promCode;
    console.log(msg);
    return this.http.get(JSON.stringify(msg));
  }

  searchVueloTwoWay() {
    let data_org: string;
    let data_dest: string;
    let data_dateRange: string[];
    let data_tickets: number;
    let data_promCode: number;
    this.currentOrg.subscribe(data => data_org = data);
    this.currentDest.subscribe(data => data_dest = data);
    this.currentDateRange.subscribe(data => data_dateRange = data);
    this.currentCticks.subscribe(data => data_tickets = data);
    this.currentPcode.subscribe(data => data_promCode = data);
    const msg: TwoWay =
    JSON.parse('{"Message_Type": "FLIGHT_SEARCH_TWOWAY", "Starts": "", "Ends": "", "dateRange": "", "Ticks": 0, "PromCode": 0}');
    msg.Starts = data_org;
    msg.Ends = data_dest;
    msg.dateRange = data_dateRange;
    msg.Ticks = data_tickets;
    msg.PromCode = data_promCode;
    console.log(msg);
    return this.http.get(JSON.stringify(msg));
  }

  parseResponse() {

  }

}
