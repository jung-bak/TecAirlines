import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthenticationService } from '@app/_services';

@Component({ templateUrl: './edit-user.component.html' })
export class EditUserComponent implements OnInit {
  

  constructor(
    private router: Router,
    private authenticationService: AuthenticationService,
    ) { 
    if (this.authenticationService.currentUserValue) { } else { this.router.navigate(['/']); }
  }

  ngOnInit() {
  }

}
