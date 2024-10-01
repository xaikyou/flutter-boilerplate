part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.connectivityStarted() = _ConnectivityStarted;
  const factory ConnectivityEvent.connectivityChanged({
    required bool isConencted,
  }) = ConnectivityChanged;
}
