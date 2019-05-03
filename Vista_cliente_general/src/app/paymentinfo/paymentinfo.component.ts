import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { DataService } from '@app/_services';


@Component({
  selector: 'app-paymentinfo',
  templateUrl: './paymentinfo.component.html',
  styleUrls: ['./paymentinfo.component.css']
})
export class PaymentinfoComponent implements OnInit {
  numero: number;
  cardForm: FormGroup;
  submitted = false;
  cName_value: string;
  cNumber_value: number;
  cMonth_value: number;
  cYear_value: number;
  cCCV_value: number;
  sPay_info: boolean;
  perce: number;
  atCien: boolean;


  constructor(
    private data: DataService,
    private formBuilder: FormBuilder,
  ) { }

  ngOnInit() {
    this.data.currentCardNumber.subscribe(number => this.numero = number);
    this.data.currentCardName.subscribe(data => this.cName_value = data);
    this.data.currentCardMonth.subscribe(data => this.cMonth_value = data);
    this.data.currentCardYear.subscribe(data => this.cYear_value = data);
    this.data.currentCardCcv.subscribe(data => this.cCCV_value = data);
    this.data.currentSpay_info.subscribe(data => this.sPay_info = data);
    this.data.currentPerce.subscribe(data => this.perce = data);
    this.data.currentAtCien.subscribe(data => this.atCien = data);

    this.cardForm = this.formBuilder.group({
      cName: ['', Validators.required],
      cNumber: ['', Validators.required],
      cMonth: ['', Validators.required],
      cYear: ['', Validators.required],
      cCCV: ['', Validators.required]
    });
  }

  get f() { return this.cardForm.controls; }

  updateData() {
    this.data.changecardNumber(this.cNumber_value);
    this.data.changeCardName(this.cName_value);
    this.data.changeCardMonth(this.cMonth_value);
    this.data.changeCardYear(this.cYear_value);
    this.data.changeCardCcv(this.cCCV_value);
  }

  onSubmit() {
    this.submitted = !this.submitted;

    if (this.cardForm.invalid) {
      return;
    } else {
      this.cName_value = this.f.cName.value;
      this.cNumber_value = this.f.cNumber.value;
      this.cMonth_value = this.f.cMonth.value;
      this.cYear_value = this.f.cYear.value;
      this.cCCV_value = this.f.cCCV.value;
      this.updateData();
      this.next();
    }
  }

  next() {
    this.data.changeSpay_info(!this.sPay_info);
    this.data.changeSconfirmation(true);
    this.data.changePerce(this.perce + 50);
    this.data.changeAtCien(true);
  }

}
