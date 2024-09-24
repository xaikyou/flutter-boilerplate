import 'package:bloc/bloc.dart';
import 'package:flutter_boilerplate/core/constants/app_enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nav_bloc.freezed.dart';
part 'nav_event.dart';
part 'nav_state.dart';

class NavBloc extends Bloc<NavEvent, NavState> {
  NavBloc() : super(const NavInitial(NavStateData())) {
    on<NavEvent>((event, emit) async {
      await event.map(
        navStarted: (NavStarted value) async {},
        navItemPressed: (NavItemPressed value) {
          emit(NavState.navLoadSuccess(
            NavStateData(currentPage: value.page),
          ));
        },
      );
    });
  }
}
