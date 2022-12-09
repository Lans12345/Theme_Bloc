import 'package:equatable/equatable.dart';
import 'package:theme_bloc/presentation/theme/app_themes.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent([List props = const []]);
}

class Light extends ThemeEvent {
  late final AppTheme theme;

  @override
  List<Object> get props => [theme];
}

class Dark extends ThemeEvent {
  late AppTheme theme;

  @override
  List<Object> get props => [theme];
}
