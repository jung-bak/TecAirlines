import { Injectable } from '@angular/core';
import { HttpRequest, HttpResponse, HttpHandler, HttpEvent, HttpInterceptor, HTTP_INTERCEPTORS } from '@angular/common/http';
import { Observable, of, throwError } from 'rxjs';
import { delay, mergeMap, materialize, dematerialize } from 'rxjs/operators';

@Injectable()
export class FakeBackendInterceptor implements HttpInterceptor {

    constructor() { }

    intercept(request: HttpRequest<any>, next: HttpHandler): Observable<HttpEvent<any>> {
        // array in local storage for registered users
        let users: any[] = JSON.parse(localStorage.getItem('users')) || [];
        let recipes: any[] = JSON.parse(localStorage.getItem('recipes')) || [];
        let orders: any[] = JSON.parse(localStorage.getItem('orders')) || [];

        // wrap in delayed observable to simulate server api call
        return of(null).pipe(mergeMap(() => {

            // authenticate
            if (request.url.endsWith('/users/authenticate') && request.method === 'POST') {
                // find if any user matches login credentials
                let filteredUsers = users.filter(user => {
                    return user.username === request.body.username && user.password === request.body.password;
                });

                if (filteredUsers.length) {
                    // if login details are valid return 200 OK with user details and fake jwt token
                    let user = filteredUsers[0];
                    let body = {
                        id: user.id,
                        username: user.username,
                        firstName: user.firstName,
                        lastName: user.lastName,
                        token: 'fake-jwt-token'
                    };

                    return of(new HttpResponse({ status: 200, body: body }));
                } else {
                    // else return 400 bad request
                    return throwError({ error: { message: 'Username or password is incorrect' } });
                }
            }

            // get users
            if (request.url.endsWith('/users') && request.method === 'GET') {
                // check for fake auth token in header and return users if valid, this security is implemented server side in a real application
                if (request.headers.get('Authorization') === 'Bearer fake-jwt-token') {
                    return of(new HttpResponse({ status: 200, body: users }));
                } else {
                    // return 401 not authorised if token is null or invalid
                    return throwError({ status: 401, error: { message: 'Unauthorised' } });
                }
            }

            //get recipes
            if (request.url.endsWith('/recipes') && request.method === 'GET') {
                return of(new HttpResponse({ status: 200, body: recipes }));
            }

            // get orders
            if (request.url.endsWith('/orders') && request.method === 'GET') {
                return of(new HttpResponse({ status: 200, body: orders }));
            }

            // get user by id
            if (request.url.match(/\/users\/\d+$/) && request.method === 'GET') {
                // check for fake auth token in header and return user if valid, this security is implemented server side in a real application
                if (request.headers.get('Authorization') === 'Bearer fake-jwt-token') {
                    // find user by id in users array
                    let urlParts = request.url.split('/');
                    let id = parseInt(urlParts[urlParts.length - 1]);
                    let matchedUsers = users.filter(user => { return user.id === id; });
                    let user = matchedUsers.length ? matchedUsers[0] : null;

                    return of(new HttpResponse({ status: 200, body: user }));
                } else {
                    // return 401 not authorised if token is null or invalid
                    return throwError({ status: 401, error: { message: 'Unauthorised' } });
                }
            }

            // get recipes by id
            if (request.url.match(/\/recipes\/\d+$/) && request.method === 'GET') {
                let urlParts = request.url.split('/');
                let id = parseInt(urlParts[urlParts.length - 1]);
                let matchedRecipes = recipes.filter(recipe => { return recipe.id === id; });
                let recipe = matchedRecipes.length ? matchedRecipes[0] : null;

                return of(new HttpResponse({ status: 200, body: recipe}));
            }

            // get orders by id
            if (request.url.match(/\/orders\/\d+$/) && request.method === 'GET') {
                let urlParts = request.url.split('/');
                let id = parseInt(urlParts[urlParts.length - 1]);
                let matchedOrders = orders.filter(order => { return order.id === id; });
                let recipe = matchedOrders.length ? matchedOrders[0] : null;

                return of(new HttpResponse({ status: 200, body: recipe}));
            }

            // register user
            if (request.url.endsWith('/users/register') && request.method === 'POST') {
                // get new user object from post body
                let newUser = request.body;

                // validation
                let duplicateUser = users.filter(user => { return user.username === newUser.username; }).length;
                if (duplicateUser) {
                    return throwError({ error: { message: 'Username "' + newUser.username + '" is already taken' } });
                }

                // save new user
                newUser.id = users.length + 1;
                users.push(newUser);
                localStorage.setItem('users', JSON.stringify(users));

                // respond 200 OK
                return of(new HttpResponse({ status: 200 }));
            }

            // register recipe
            if (request.url.endsWith('/recipes/registerRecipe') && request.method === 'POST') {
                let newRecipe = request.body;

                let duplicateRecipe = recipes.filter(recipe => { return recipe.number === newRecipe.number; }).length;
                if (duplicateRecipe) {
                    return throwError({ error: { message: 'Recipe number "' + newRecipe.number + '" is already taken' } });
                }

                newRecipe.id = recipes.length + 1;
                recipes.push(newRecipe);
                localStorage.setItem('recipes', JSON.stringify(recipes));

                return of(new HttpResponse({ status: 200 }));
            }

            // place order
            if (request.url.endsWith('/orders/placeOrder') && request.method === 'POST') {
                let newOrder = request.body;

                newOrder.id = orders.length + 1;
                orders.push(newOrder);
                localStorage.setItem('orders', JSON.stringify(orders));

                return of(new HttpResponse({ status: 200 }));
            }

            // delete user
            if (request.url.match(/\/users\/\d+$/) && request.method === 'DELETE') {
                // check for fake auth token in header and return user if valid, this security is implemented server side in a real application
                if (request.headers.get('Authorization') === 'Bearer fake-jwt-token') {
                    // find user by id in users array
                    let urlParts = request.url.split('/');
                    let id = parseInt(urlParts[urlParts.length - 1]);
                    for (let i = 0; i < users.length; i++) {
                        let user = users[i];
                        if (user.id === id) {
                            // delete user
                            users.splice(i, 1);
                            localStorage.setItem('users', JSON.stringify(users));
                            break;
                        }
                    }

                    // respond 200 OK
                    return of(new HttpResponse({ status: 200 }));
                } else {
                    // return 401 not authorised if token is null or invalid
                    return throwError({ status: 401, error: { message: 'Unauthorised' } });
                }
            }

            // delete recipe
            if (request.url.match(/\/recipes\/\d+$/) && request.method === 'DELETE') {
                let urlParts = request.url.split('/');
                let id = parseInt(urlParts[urlParts.length - 1]);
                for (let i = 0; i < recipes.length; i++) {
                    let recipe = recipes[i];
                    if (recipe.id === id) {
                        // delete user
                        recipes.splice(i, 1);
                        localStorage.setItem('recipes', JSON.stringify(recipes));
                        break;
                    }
                }
                return of(new HttpResponse({ status: 200 }));
            }

            // delete order
            if (request.url.match(/\/orders\/\d+$/) && request.method === 'DELETE') {
                let urlParts = request.url.split('/');
                let id = parseInt(urlParts[urlParts.length - 1]);
                for (let i = 0; i < orders.length; i++) {
                    let recipe = orders[i];
                    if (recipe.id === id) {
                        // delete user
                        orders.splice(i, 1);
                        localStorage.setItem('orders', JSON.stringify(orders));
                        break;
                    }
                }
                return of(new HttpResponse({ status: 200 }));
            }

            // pass through any requests not handled above
            return next.handle(request);
            
        }))


        // call materialize and dematerialize to ensure delay even if an error is thrown (https://github.com/Reactive-Extensions/RxJS/issues/648)
        .pipe(materialize())
        .pipe(delay(500))
        .pipe(dematerialize());
    }
}

export let fakeBackendProvider = {
    // use fake backend in place of Http service for backend-less development
    provide: HTTP_INTERCEPTORS,
    useClass: FakeBackendInterceptor,
    multi: true
};