import { LocalstorageService } from '../../../services/localstorage.service';
import { LoginBindingModel } from '../../../models/public-models/binding-models/login-binding-model';
import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, Validators } from '@angular/forms';
import { PublicService } from '../../../services/public.service';
import { HttpErrorResponse } from '@angular/common/http';
import { Router } from '@angular/router';

@Component({
	selector: 'app-login',
	templateUrl: './login.component.html',
	styleUrls: ['./login.component.scss']
})
export class LoginComponent implements OnInit {

	loginForm: FormGroup;
	constructor(private router: Router, private localStorageService: LocalstorageService, private publicService: PublicService, private fb: FormBuilder) {
		this.loginForm = this.fb.group({
			username: ['',
			[
				Validators.required
			]
			],
			password: ['',
			[
				Validators.required
			]]
		});
	}

	ngOnInit() {
	}

	onSubmit(): void {
		if (this.loginForm.valid) {
			const loginModel: LoginBindingModel = this.loginForm.value;
			this.publicService.login(loginModel).subscribe((token: any) => {
				this.localStorageService.token = token.token;

				this.localStorageService.login();

				if(this.localStorageService.isAdmin()) {
					this.router.navigate(['admin/reservations']);
				}
				else {
					this.router.navigate(['customer/overview'])
				}

				window.location.reload();
			}, (errorResponse: HttpErrorResponse) => {
				if (errorResponse.status === 200) {
					this.localStorageService.token = errorResponse.error.text;

					this.localStorageService.login();
				}
			});

		}
	}
}
