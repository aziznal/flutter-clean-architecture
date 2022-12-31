import 'package:core/core.dart';

abstract class RecipeLocalDataSource {
  void cache(Recipe recipe);

  Recipe? get(String id);
}