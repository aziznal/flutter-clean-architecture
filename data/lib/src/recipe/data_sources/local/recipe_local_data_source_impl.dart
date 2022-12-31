import 'package:core/core.dart';
import './recipe_local_data_source.dart';

class RecipeLocalDataSourceImpl implements RecipeLocalDataSource {
  final Map<String, Recipe> _recipeCache = {};

  @override
  void cache(Recipe recipe) {
    _recipeCache[recipe.title] = recipe;
  }

  @override
  Recipe? get(String id) {
    return _recipeCache[id];
  }
}
