import 'package:core/src/recipe/entities/difficulty.dart';

class Recipe {
  const Recipe({
    required this.title,
    required this.instructions,
    required this.difficulty,
  });

  final String title;
  final String instructions;
  final RecipeDifficulty difficulty;
}
