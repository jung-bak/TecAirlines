import { Routes, RouterModule } from '@angular/router';

import { HomeComponent } from './home';
import { LoginComponent } from './login';
import { RegisterComponent } from './register';
import { AuthGuard } from './_guards';
import { EditUserComponent } from './edit-user';
import { OrdersComponent } from './orders';
import { RecipesComponent } from './recipes';
import { RegisterRecipeComponent } from './register-recipe';
import { PlaceOrderComponent } from './place-order';

const appRoutes: Routes = [
    { path: '', component: HomeComponent, canActivate: [AuthGuard] },
    { path: 'login', component: LoginComponent },
    { path: 'register', component: RegisterComponent },
    { path: 'edit-user', component: EditUserComponent },
    { path: 'recipes', component: RecipesComponent },
    { path: 'orders', component: OrdersComponent },
    { path: 'register-recipe', component: RegisterRecipeComponent},
    { path: 'place-order', component: PlaceOrderComponent},

    // otherwise redirect to home
    { path: '**', redirectTo: '' }
];

export const routing = RouterModule.forRoot(appRoutes);