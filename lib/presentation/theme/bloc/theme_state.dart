import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:theme_bloc/presentation/theme/app_themes.dart';

class ThemeState extends Equatable {
  final ThemeData themeData;

  const ThemeState({required this.themeData});

  @override
  List<Object> get props => [];
}

class LightState extends ThemeState {
  final ThemeData value;
  LightState({
    required this.value,
  }) : super(themeData: appThemeData[AppTheme.LightTheme]!);

  @override
  List<Object> get props => [value];
}

class DarkState extends ThemeState {
  final ThemeData value;
  DarkState({
    required this.value,
  }) : super(themeData: appThemeData[AppTheme.DarkTheme]!);

  @override
  List<Object> get props => [value];
}
