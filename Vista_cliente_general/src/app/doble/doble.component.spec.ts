import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DobleComponent } from './doble.component';

describe('DobleComponent', () => {
  let component: DobleComponent;
  let fixture: ComponentFixture<DobleComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DobleComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DobleComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
