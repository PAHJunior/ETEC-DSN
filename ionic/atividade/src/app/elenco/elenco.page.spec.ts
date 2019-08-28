import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { ElencoPage } from './elenco.page';

describe('ElencoPage', () => {
  let component: ElencoPage;
  let fixture: ComponentFixture<ElencoPage>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ ElencoPage ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(ElencoPage);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
