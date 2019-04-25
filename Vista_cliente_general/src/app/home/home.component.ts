import { Component, OnInit, OnDestroy } from '@angular/core';
import { Subscription } from 'rxjs';

import { User } from '@app/_models';
import { UserService, AuthenticationService } from '@app/_services';

@Component({ templateUrl: 'home.component.html', styleUrls: ['./home.component.css'] })
export class HomeComponent implements OnInit, OnDestroy {
    currentUser: User;
    currentUserSubscription: Subscription;
    users: User[] = [];

    public allowCustom: true;
    public listOrigin: Array<string> = ['Lugar1', 'Lugar2', 'Lugar3',
    'Lugar4', 'Lugar5', 'Lugar6', 'Lugar7', 'Lugar8'];
    public listDest: Array<string> = ['Lugar1', 'Lugar2', 'Lugar3',
    'Lugar4', 'Lugar5', 'Lugar6', 'Lugar7', 'Lugar8'];
    public listTick: Array<string> = ['1', '2', '3', '4', '5'];

    public range = { start: null, end: null };

    constructor(
        private authenticationService: AuthenticationService,
        private userService: UserService
    ) {
        this.currentUserSubscription = this.authenticationService.currentUser.subscribe(user => {
            this.currentUser = user;
        });
    }

    ngOnInit() { }

    ngOnDestroy() {
        // unsubscribe to ensure no memory leaks
        this.currentUserSubscription.unsubscribe();
    }

}
