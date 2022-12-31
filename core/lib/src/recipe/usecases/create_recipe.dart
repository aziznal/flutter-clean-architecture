import 'package:core/src/recipe/entities/recipe.dart';
import 'package:core/src/recipe/recipe_repository.dart';

class CreateRecipe {
  CreateRecipe(this._repo);

  final RecipeRepository _repo;

  Future<Recipe> call(Recipe newRecipe) async {
    await _repo.create(newRecipe);

    return newRecipe;
  }
}
