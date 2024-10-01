import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/core/styles/app_font.dart';
import 'package:flutter_boilerplate/core/utils/extensions/context_extension.dart';
import 'package:flutter_boilerplate/shared/bloc/connectivity/connectivity_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppFont.h1(
          context.loc.history,
          isBold: true,
        ),
      ),
      body: Center(
        child: BlocListener<ConnectivityBloc, ConnectivityState>(
          listener: (context, state) {
            if (state is ConnectivityFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('No internet connection'),
                  duration: Duration(seconds: 3),
                ),
              );
            }
          },
          child: BlocBuilder<ConnectivityBloc, ConnectivityState>(
            builder: (context, state) {
              if (state is ConnectivityInitial) {
                return const Text('Checking connectivity...');
              } else if (state is ConnectivitySuccess) {
                return const Text('Connected');
              } else if (state is ConnectivityFailure) {
                return const Text('Not Connected');
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
