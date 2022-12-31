import 'package:core/core.dart' as core;
import 'package:data/data.dart' as data;

import 'package:get_it/get_it.dart';

final diInstance = GetIt.instance;  

void configureDependencies() {
  core.configureDependencies(diInstance);
  data.configureDependencies(diInstance);
}
