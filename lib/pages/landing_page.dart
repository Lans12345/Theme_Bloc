import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/pages/home_page.dart';
import 'package:theme_bloc/presentation/theme/bloc/theme_bloc.dart';

import '../presentation/theme/app_themes.dart';
import '../presentation/theme/bloc/theme_event.dart';

import '../presentation/toggle/bloc/toggle_bloc.dart';
import '../presentation/toggle/bloc/toggle_event.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var _value = true;

  var status = 'on';

  @override
  Widget build(BuildContext context) {
    final themeBloc = BlocProvider.of<ThemeBloc>(context);
    final toggleBloc = BlocProvider.of<ToggleBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.white,
              onPressed: () {
                themeBloc.add(Light());
                toggleBloc.add(Taggled());
              },
              child: const Text(
                'Light',
                style: TextStyle(color: Colors.black),
              ),
            ),
            MaterialButton(
              color: Colors.black,
              onPressed: () {
                themeBloc.add(Dark());
                toggleBloc.add(Untaggled());
              },
              child: const Text(
                'Dark',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
