import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { RecipeService, AlertService } from '@app/_services';
import { first } from 'rxjs/operators';
import { Router } from '@angular/router';
import { AuthenticationService } from '@app/_services';

@Component({templateUrl: './register-recipe.component.html'})
export class RegisterRecipeComponent implements OnInit {
  registerForm: FormGroup;
  loading = false;
  submitted = false;

  constructor(
    private formBuilder: FormBuilder,
    private router: Router,
    private recipeService: RecipeService,
    private alertService: AlertService,
    private authenticationService: AuthenticationService,

  ) {
    if (this.authenticationService.currentUserValue) { } else { this.router.navigate(['/']); }
   }

  ngOnInit() {
    this.registerForm = this.formBuilder.group({
      number: ['', Validators.required],
      doctor: ['', Validators.required],
      meds: ['', Validators.required]
    });
  }

  get f() { return this.registerForm.controls; }

  onSubmit() {
    this.submitted = true;

    if (this.registerForm.invalid) { return; }

    this.loading = true;
    this.recipeService.register(this.registerForm.value)
      .pipe(first())
      .subscribe(
        data => {
          this.alertService.success('Registration successful', true);
          this.router.navigate(['/recipes'])
        },
        error => {
          this.alertService.error(error);
          this.loading = false;
        });
  }
}
