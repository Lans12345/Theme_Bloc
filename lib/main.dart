import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:theme_bloc/pages/landing_page.dart';
import 'package:theme_bloc/presentation/theme/bloc/theme_bloc.dart';
import 'package:theme_bloc/presentation/theme/bloc/theme_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => ThemeBloc()),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return MaterialApp(theme: state.themeData, home: const LandingPage());
        },
      ),
    );
  }
}
