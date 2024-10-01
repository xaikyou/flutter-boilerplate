import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_bloc.freezed.dart';
part 'connectivity_event.dart';
part 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  late StreamSubscription<List<ConnectivityResult>> _connectivitySubscription;

  ConnectivityBloc()
      : super(const ConnectivityInitial(ConnectivityStateData())) {
    _connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      bool isConencted = !results.contains(ConnectivityResult.none);
      add(ConnectivityChanged(isConencted: isConencted));
    });
    on<ConnectivityEvent>(
      (event, emit) async {
        await event.map(
          connectivityStarted: (_ConnectivityStarted value) async {},
          connectivityChanged: (ConnectivityChanged value) {
            if (value.isConencted) {
              emit(const ConnectivitySuccess(
                  ConnectivityStateData(isConencted: true)));
            } else {
              emit(const ConnectivityFailure(ConnectivityStateData()));
            }
          },
        );
      },
    );
  }

  @override
  Future<void> close() {
    _connectivitySubscription.cancel();
    return super.close();
  }
}
