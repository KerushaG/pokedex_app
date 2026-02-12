import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pokedex_app/injection.config.dart';

final GetIt coreSl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() async {
  coreSl.init();
}
