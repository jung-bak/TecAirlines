import { Component, OnInit, OnDestroy } from '@angular/core';
import { Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { first } from 'rxjs/operators';

import { Recipe } from '@app/_models';
import { RecipeService, AuthenticationService } from '@app/_services';

@Component({templateUrl: './recipes.component.html'})
export class RecipesComponent implements OnInit {
  currentRecipe: Recipe;
  
  currentRecipeSubscripton: Subscription;
  recipes: Recipe[] = [];

  constructor(
    private authenticationService: AuthenticationService,
    private router: Router,
    private recipeService: RecipeService
  ) { 
    if (this.authenticationService.currentUserValue) { } else {this.router.navigate(['/']);}
  }

  ngOnInit() {
    this.loadAllRecipes();
  }

  deleteRecipe(id: number) {
    this.recipeService.delete(id).pipe(first()).subscribe(() => {
      this.loadAllRecipes()
  });
  }

  private loadAllRecipes() {
    this.recipeService.getAll().pipe(first()).subscribe(recipes => {
      this.recipes = recipes;
    })
  }
}
