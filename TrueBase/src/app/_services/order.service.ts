import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { environment } from '@environments/environment';
import { Order } from '@app/_models';

@Injectable({ providedIn: 'root' })
export class OrderService {
    constructor (private http: HttpClient) { }

    getAll() {
        return this.http.get<Order[]>(`${environment.apiUrl}/orders`);
    }

    getById(id: number) {
        return this.http.get(`${environment.apiUrl}/orders/${id}`);
    }

    register(order: Order) {
        return this.http.post(`${environment.apiUrl}/orders/placeOrder`, order);
    }

    update(order: Order) {
        return this.http.put(`${environment.apiUrl}/orders/${order.id}`, order);
    }

    delete(id: number) {
        return this.http.delete(`${environment.apiUrl}/orders/${id}`);
    }
}