import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:theme_bloc/presentation/theme/bloc/theme_event.dart';
import 'package:theme_bloc/presentation/toggle/bloc/toggle_event.dart';

enum ToggledEvent { Taggled, Untaggled }

class ToggleBloc extends Bloc<ToggleEvent, bool> {
  ToggleBloc() : super(true) {
    on<Taggled>((event, emit) => emit(true));
    on<Untaggled>((event, emit) => emit(false));
  }

  @override
  Stream<bool> mapEventToState(ToggledEvent event) async* {
    switch (event) {
      case ToggledEvent.Taggled:
        print(true);
        yield true;
        break;
      case ToggledEvent.Untaggled:
        print(false);
        yield false;
        break;
    }
  }
}
