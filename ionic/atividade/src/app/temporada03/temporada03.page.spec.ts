import { CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { Temporada03Page } from './temporada03.page';

describe('Temporada03Page', () => {
  let component: Temporada03Page;
  let fixture: ComponentFixture<Temporada03Page>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ Temporada03Page ],
      schemas: [CUSTOM_ELEMENTS_SCHEMA],
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(Temporada03Page);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
