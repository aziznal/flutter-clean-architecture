import 'package:core/core.dart' as core;
import 'package:data/data.dart' as data;

import 'package:get_it/get_it.dart';

void configureDependencies(GetIt diInstance) {
  data.configureDependencies(diInstance);
  core.configureDependencies(diInstance);
}
