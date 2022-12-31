import 'package:core/core.dart';

abstract class RecipeRemoteDataSource {
  Future<void> create(Recipe newRecipe);

  Future<Recipe?> getById(String id);
}