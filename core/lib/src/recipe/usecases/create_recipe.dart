import 'package:core/src/recipe/entities/recipe.dart';
import 'package:core/src/recipe/recipe_repository.dart';

import 'package:injectable/injectable.dart';

@injectable
class CreateRecipe {
  CreateRecipe(this._repo);

  final RecipeRepository _repo;

  Future<Recipe> call(Recipe newRecipe) async {
    await _repo.create(newRecipe);

    return newRecipe;
  }
}
