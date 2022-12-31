import 'package:get_it/get_it.dart';

import 'package:injectable/injectable.dart';

import './di_instance.config.dart';

final diInstance = GetIt.instance;  
  
@InjectableInit(  
  initializerName: 'init',
  preferRelativeImports: true,
)  
void configureDependencies() => init(diInstance);  
