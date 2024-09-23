part of 'nav_bloc.dart';

@freezed
class NavStateData with _$NavStateData {
  const factory NavStateData({
    @Default(Pages.HOME) Pages currentPage,
    Map<String, dynamic>? argument,
  }) = _NavStateData;
}

@freezed
class NavState with _$NavState {
  const factory NavState.navInitial(NavStateData data) = NavInitial;
  const factory NavState.navLoadSuccess(NavStateData data) = NavLoadSuccess;
}
