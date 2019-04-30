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
import { BaseplaneComponent } from './baseplane/baseplane.component';
import { PaymentinfoComponent } from './paymentinfo/paymentinfo.component';
import { ConfirmationComponent } from './confirmation/confirmation.component';
import { DataService } from './_services';
import { AirbusComponent } from './airbus/airbus.component';
import { DobleComponent } from './doble/doble.component';
import { UnicoComponent } from './unico/unico.component';



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
        ReservaComponent,
        BaseplaneComponent,
        PaymentinfoComponent,
        ConfirmationComponent
,
        AirbusComponent ,
        DobleComponent ,
        UnicoComponent    ],
    providers: [
        { provide: HTTP_INTERCEPTORS, useClass: JwtInterceptor, multi: true },
        { provide: HTTP_INTERCEPTORS, useClass: ErrorInterceptor, multi: true },
        DataService,
        // provider used to create fake backend
        fakeBackendProvider
    ],
    bootstrap: [AppComponent]
})

export class AppModule { }
