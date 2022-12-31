import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import './recipe_remote_data_source.dart';

@Injectable(as: RecipeRemoteDataSource)
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