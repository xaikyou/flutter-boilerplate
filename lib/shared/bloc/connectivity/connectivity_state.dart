part of 'connectivity_bloc.dart';

@freezed
class ConnectivityStateData with _$ConnectivityStateData {
  const factory ConnectivityStateData({
    @Default(false) bool isConencted,
  }) = _ConnectivityStateData;
}

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.connectivityInitial(
    ConnectivityStateData data,
  ) = ConnectivityInitial;
  const factory ConnectivityState.connectivitySuccess(
    ConnectivityStateData data,
  ) = ConnectivitySuccess;
  const factory ConnectivityState.connectivityFailure(
    ConnectivityStateData data,
  ) = ConnectivityFailure;
}
