import 'package:core/core.dart';
import './data_sources/local/recipe_local_data_source.dart';
import './data_sources/remote/recipe_remote_data_source.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  RecipeRepositoryImpl(this._localDataSource, this._remoteDataSource);

  final RecipeLocalDataSource _localDataSource;
  final RecipeRemoteDataSource _remoteDataSource;

  @override
  Future<void> create(Recipe newRecipe) async {
    await _remoteDataSource.create(newRecipe);

    _localDataSource.cache(newRecipe);
  }
  
  @override
  Future<Recipe?> get(String id) async {
    // try cache
    final recipe = _localDataSource.get(id);

    // if no hit, try remote
    if (recipe == null) return _getFromRemote(id);

    return recipe;
  }

  Future<Recipe?> _getFromRemote(String id) {
    return _remoteDataSource.getById(id);
  }
}
