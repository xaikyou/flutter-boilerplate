import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/features/nav/presentation/bloc/nav_bloc.dart';
import 'package:flutter_boilerplate/shared/bloc/connectivity/connectivity_bloc.dart';

class AppProvider {
  AppProvider._();

  static get providers => [
        BlocProvider(create: (context) => NavBloc()),
        BlocProvider(create: (context) => ConnectivityBloc()),
      ];
}
