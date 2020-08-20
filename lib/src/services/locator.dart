import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'locator.config.dart';

final locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)

void setupLocator() => $initGetIt(locator);