import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_bloc/presentation/theme/app_themes.dart';
import 'package:theme_bloc/presentation/theme/bloc/theme_event.dart';
import 'package:theme_bloc/presentation/theme/bloc/theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(LightState(value: appThemeData[AppTheme.LightTheme]!)) {
    on<Light>(_onLight);
    on<Dark>(_onDark);
  }

  void _onLight(ThemeEvent event, Emitter<ThemeState> emit) {
    emit(LightState(value: appThemeData[AppTheme.LightTheme]!));
  }

  void _onDark(ThemeEvent event, Emitter<ThemeState> emit) {
    emit(DarkState(value: appThemeData[AppTheme.DarkTheme]!));
  }
}
