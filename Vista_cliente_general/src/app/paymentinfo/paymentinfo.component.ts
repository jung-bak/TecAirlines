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


  constructor(
    private data: DataService,
    private formBuilder: FormBuilder,
  ) { }

  ngOnInit() {
    this.data.currentNumber.subscribe(number => this.numero = number);

    this.cardForm = this.formBuilder.group({
      cName: ['', Validators.required],
      cNumber: ['', [Validators.required, Validators.minLength(16)]],
      cMonth: ['', Validators.required],
      cYear: ['', Validators.required]
    });
  }

  get f() { return this.cardForm.controls; }

  updateNumber() {
    this.data.changeNumber(this.cNumber_value);
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
      this.updateNumber();

      // console.log(this.cName_value, this.cNumber_value, this.cMonth_value, this.cYear_value, this.cNumber);
    }
  }

}
