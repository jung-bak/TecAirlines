import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { DropDownsModule } from '@progress/kendo-angular-dropdowns';
import { ReactiveFormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { FormsModule } from '@angular/forms';

// used to create fake backend
import { fakeBackendProvider } from './_helpers';

import { AppComponent } from './app.component';
import { routing } from './app.routing';

import { AlertComponent } from './_components';
import { JwtInterceptor, ErrorInterceptor } from './_helpers';
import { HomeComponent } from './home';
import { LoginComponent } from './login';
import { RegisterComponent } from './register';
import { NavbarComponent } from './navbar';

import { InputsModule } from '@progress/kendo-angular-inputs';

import { DateInputsModule } from '@progress/kendo-angular-dateinputs';
import { ReservaComponent } from './reserva/reserva.component';
import { ProgressBarModule } from 'angular-progress-bar';
import { BillingComponent } from './billing/billing.component';
import { ConfirmacionComponent } from './confirmacion/confirmacion.component';
//import { AirbusComponent } from './plane_model';

@NgModule({
    imports: [
        BrowserModule,
        ReactiveFormsModule,
        HttpClientModule,
        FormsModule,
        routing,
        BrowserAnimationsModule,
        DropDownsModule,
        InputsModule ,
        DropDownsModule ,
        DateInputsModule,
        ProgressBarModule
      ],
    declarations: [
        AppComponent,
        AlertComponent,
        HomeComponent,
        LoginComponent,
        RegisterComponent,
        NavbarComponent,
        ReservaComponent ,
        BillingComponent ,
        ConfirmacionComponent ,
        //AirbusComponent
      ],
    providers: [
        { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
        { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },

        // provider used to create fake backend
        fakeBackendProvider
    ],
    bootstrap: [AppComponent]
})

export class AppModule { }
