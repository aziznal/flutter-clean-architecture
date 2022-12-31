import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import './recipe_local_data_source.dart';

@Injectable(as: RecipeLocalDataSource)
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
