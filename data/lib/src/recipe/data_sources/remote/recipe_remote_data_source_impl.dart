import 'package:core/core.dart';
import './recipe_remote_data_source.dart';

class RecipeRemoteDataSourceImpl implements RecipeRemoteDataSource {
  @override
  Future<void> create(Recipe newRecipe) {
    throw UnimplementedError();
  }
  
  @override
  Future<Recipe> getById(String id) {
    throw UnimplementedError();
  }
}