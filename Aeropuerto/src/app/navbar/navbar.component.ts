import { Component, OnInit } from '@angular/core';
import { AlertService, AuthenticationService } from '@app/_services';
import { Router, ActivatedRoute } from '@angular/router';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html',
  styleUrls: ['./navbar.component.css']
})
export class NavbarComponent implements OnInit {

  bClass: string;
  bName: string;
  bClick: string;
  bLink: string;


  constructor(
    private authenticationService: AuthenticationService,
    private alertService: AlertService,
    private router: Router,
  ) {
    this.bClass = 'btn btn-outline-danger my-2 my-sm-0';
      this.bName = 'Cerrar Sesion';
      this.bClick = 'logout()';
    if (this.authenticationService.currentUserValue) {
      this.bClass = 'btn btn-outline-danger my-2 my-sm-0';
      this.bName = 'Cerrar Sesion';
      this.bClick = 'logout()';
    } else {
      this.bClass = 'btn btn-primary';
      this.bName = 'Iniciar Sesion';
      this.bClick = 'login()';
    }
  }

  log() {
    if (this.authenticationService.currentUserValue) {
      this.authenticationService.logout();
      window.location.reload();
      this.router.navigate(['/']);
    } else {
      this.router.navigate(['/login']);
    }
  }

  ngOnInit() {
  }

  reloadPage() {
    this.router.navigate([this.router.url]);
  }

}
