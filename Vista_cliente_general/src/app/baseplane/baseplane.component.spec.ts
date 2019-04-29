import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { BaseplaneComponent } from './baseplane.component';

describe('BaseplaneComponent', () => {
  let component: BaseplaneComponent;
  let fixture: ComponentFixture<BaseplaneComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ BaseplaneComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(BaseplaneComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
