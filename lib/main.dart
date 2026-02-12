import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/firebase_options.dart';
import 'package:pokedex_app/injection.dart';
import 'package:pokedex_app/src/view/home/home_page.dart';
import 'package:pokedex_app/src/view/login/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokedex_app/src/view_model/bloc/authentication/auth_bloc.dart';
import 'package:pokedex_app/src/view_model/bloc/pokemons/pokemon_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  configureDependencies();

  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => coreSl<AuthBloc>()),
        BlocProvider(create: (_) => coreSl<PokemonBloc>()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 242, 109, 32),
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: const AppAuthManager(),
      ),
    );
  }
}

class AppAuthManager extends StatelessWidget {
  const AppAuthManager({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen:
          (previous, current) =>
              previous.authenticatedUser != current.authenticatedUser &&
              current.authenticatedUser != null,
      listener: (context, state) {
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
      buildWhen:
          (previous, current) =>
              previous.authenticatedUser != current.authenticatedUser,
      builder: (context, state) {
        if (state.authenticatedUser != null) {
          return const HomePage();
        }
        return const LoginPage();
      },
    );
  }
}
