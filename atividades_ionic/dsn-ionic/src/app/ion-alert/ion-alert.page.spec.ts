import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { IonAlertPage } from './ion-alert.page';

describe('IonAlertPage', () => {
  let component: IonAlertPage;
  let fixture: ComponentFixture<IonAlertPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ IonAlertPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(IonAlertPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
