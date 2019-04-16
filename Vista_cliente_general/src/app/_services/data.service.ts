import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';

@Injectable()
export class DataService {

    private userId = new BehaviorSubject<number>(0);
    currentUserId = this.userId.asObservable();

    constructor() {}

    changeMessage(id: number) {
        this.userId.next(id);
    }
}