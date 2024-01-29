import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../spalsh_bloc/splash_bloc.dart';
import '../spalsh_bloc/splash_event.dart';
import '../spalsh_bloc/splash_state.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<SplashBloc>(context).add(SetSplash());
    return Scaffold(
      body: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashLoadedState) {
            Navigator.pushReplacementNamed(context, "/login");
          }
        },
        builder: (context, state) {
          if (state is SplashLoadingState) {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text('Welcome to atB Jobs')),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
