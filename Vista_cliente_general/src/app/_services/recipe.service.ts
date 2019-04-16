import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

import { environment } from '@environments/environment';
import { Recipe } from '@app/_models';

@Injectable({ providedIn: 'root' })
export class RecipeService {
    constructor(private http: HttpClient) { }

    getAll() {
        return this.http.get<Recipe[]>(`${environment.apiUrl}/recipes`);
    }

    getById(id: number) {
        return this.http.get(`${environment.apiUrl}/recipes/${id}`);
    }

    register(recipe: Recipe) {
        return this.http.post(`${environment.apiUrl}/recipes/registerRecipe`, recipe);
    }

    update(recipe: Recipe) {
        return this.http.put(`${environment.apiUrl}/recipes/${recipe.id}`, recipe);
    }

    delete(id: number) {
        return this.http.delete(`${environment.apiUrl}/recipes/${id}`);
    }
}
