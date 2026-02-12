// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import 'src/model/clients/interfaces/i_pokemon_client.dart' as _i460;
import 'src/model/clients/pokemon_api_client.dart' as _i374;
import 'src/model/repositories/implementation/auth_repository.dart' as _i741;
import 'src/model/repositories/implementation/pokemon_repository.dart' as _i123;
import 'src/model/repositories/interfaces/i_auth_repository.dart' as _i565;
import 'src/model/repositories/interfaces/i_pokemon_repository.dart' as _i511;
import 'src/model/services/implementation/firebase_auth_service.dart' as _i717;
import 'src/model/services/interfaces/i_firebase_auth_service.dart' as _i881;
import 'src/view_model/bloc/authentication/auth_bloc.dart' as _i19;
import 'src/view_model/bloc/pokemons/pokemon_bloc.dart' as _i903;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i460.IPokemonClient>(() => _i374.PokemonClient());
    gh.lazySingleton<_i565.IAuthRepository>(() => _i741.AuthRepository());
    gh.lazySingleton<_i881.IFirebaseAuthService>(
      () => _i717.FirebaseAuthService(),
    );
    gh.singleton<_i19.AuthBloc>(
      () => _i19.AuthBloc(gh<_i565.IAuthRepository>()),
    );
    gh.lazySingleton<_i511.IPokemonRepository>(
      () => _i123.PokemonRepository(gh<_i460.IPokemonClient>()),
    );
    gh.singleton<_i903.PokemonBloc>(
      () => _i903.PokemonBloc(gh<_i511.IPokemonRepository>()),
    );
    return this;
  }
}
