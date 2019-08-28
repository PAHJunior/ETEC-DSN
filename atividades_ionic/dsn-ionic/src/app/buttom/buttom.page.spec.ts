import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ButtomPage } from './buttom.page';

describe('ButtomPage', () => {
  let component: ButtomPage;
  let fixture: ComponentFixture<ButtomPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ButtomPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ButtomPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
