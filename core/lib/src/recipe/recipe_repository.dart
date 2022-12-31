import 'package:core/src/recipe/entities/recipe.dart';

abstract class RecipeRepository {
  Future<void> create(Recipe newRecipe);

  Future<Recipe?> get(String id);
}
