import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable()
export class DataService {

    private userId = new BehaviorSubject<number>(0);
    currentUserId = this.userId.asObservable();

    private number = new BehaviorSubject<number>(0);
    currentNumber = this.number.asObservable();

    private cart = new BehaviorSubject<any[]>([]);
    currentCart = this.cart.asObservable();

    constructor() {}

    changeID(id: number) {
        this.userId.next(id);
    }

    changeNumber(num: number) {
      this.number.next(num);
    }

    changeCart(newCart: any[]) {
      this.cart.next(newCart);
    }
}
