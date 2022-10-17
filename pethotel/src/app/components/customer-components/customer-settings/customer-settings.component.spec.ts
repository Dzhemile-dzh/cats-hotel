import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CustomerSettingsComponent } from './customer-settings.component';

describe('CustomerSettingsComponent', () => {
  let component: CustomerSettingsComponent;
  let fixture: ComponentFixture<CustomerSettingsComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CustomerSettingsComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CustomerSettingsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
