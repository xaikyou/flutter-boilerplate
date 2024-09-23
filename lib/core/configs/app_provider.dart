import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/features/nav/presentation/bloc/nav_bloc.dart';

class AppProvider {
  AppProvider._();

  static get providers => [
        BlocProvider(create: (context) => NavBloc()),
      ];
}
