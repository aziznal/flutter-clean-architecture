import 'package:core/core.dart' as core;
import 'package:data/data.dart' as data;

import 'package:get_it/get_it.dart';

void configureDependencies(GetIt diInstance) {
  print("configuring data dependencies... 🛠️");
  data.configureDependencies(diInstance);

  print("configuring core dependencies... 🛠️");
  core.configureDependencies(diInstance);
}
