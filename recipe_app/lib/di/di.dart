import 'package:di/di.dart' as di;
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:recipe_app/di/di.config.dart';

final diInstance = GetIt.instance;

@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)  
void configureDependencies() {
  print("configuring app dependencies... 🛠️");

  init(diInstance);
  di.configureDependencies(diInstance);
}
