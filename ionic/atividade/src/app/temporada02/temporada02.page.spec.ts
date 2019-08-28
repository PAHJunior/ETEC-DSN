import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Temporada02Page } from './temporada02.page';

describe('Temporada02Page', () => {
  let component: Temporada02Page;
  let fixture: ComponentFixture<Temporada02Page>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Temporada02Page ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Temporada02Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
