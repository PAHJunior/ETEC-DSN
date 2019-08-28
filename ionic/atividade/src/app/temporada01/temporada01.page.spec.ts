import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Temporada01Page } from './temporada01.page';

describe('Temporada01Page', () => {
  let component: Temporada01Page;
  let fixture: ComponentFixture<Temporada01Page>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Temporada01Page ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Temporada01Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
