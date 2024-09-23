part of 'nav_bloc.dart';

@freezed
class NavEvent with _$NavEvent {
  const factory NavEvent.navStarted() = NavStarted;
  const factory NavEvent.navItemPressed({
    required Pages page,
    Map<String, dynamic>? argument,
  }) = NavItemPressed;
}
