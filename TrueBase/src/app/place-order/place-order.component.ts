import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validator, Validators } from '@angular/forms';
import { OrderService, AlertService, AuthenticationService } from '@app/_services';
import { first } from 'rxjs/operators';
import { Router } from '@angular/router';

@Component({ templateUrl: './place-order.component.html' })
export class PlaceOrderComponent implements OnInit {
  registerForm: FormGroup;
  loading = false;
  submitted = false;

  constructor(
    private formBuilder: FormBuilder,
    private router: Router,
    private orderService: OrderService,
    private alertService: AlertService,
    private authenticationService: AuthenticationService
  ) {
    if (this.authenticationService.currentUserValue) { } else { this.router.navigate(['/']); }
  }

  ngOnInit() {
    this.registerForm = this.formBuilder.group({
      product: ['', Validators.required],
      cant: ['', Validators.required]
    });
  }

  get f() { return this.registerForm.controls; }

  onSubmit() {
    this.submitted = true;

    if (this.registerForm.invalid) { return; }

    this.loading = true;
    this.orderService.register(this.registerForm.value)
      .pipe(first())
      .subscribe(
        data => {
          this.alertService.success('Placement successful', true);
          this.router.navigate(['/orders'])
        },
        error => {
          this.alertService.error(error);
          this.loading = false;
        });
  }
}
