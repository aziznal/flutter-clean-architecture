import 'package:core/src/recipe/entities/difficulty.dart';
import 'package:core/src/recipe/entities/recipe.dart';

abstract class RecipeRepository {
  create(Recipe newRecipe);
}
