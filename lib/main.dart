import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/route/route.dart';
import 'feature/featureTwo_splash/screen/splash_screen.dart';
import 'feature/featureTwo_splash/spalsh_bloc/splash_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await AppTrackingTransparency.requestTrackingAuthorization();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGenerateRoute,
      home: BlocProvider(
        create: (context) => SplashBloc(),
        child: const SplashScreen(),
      ),
      //home: ShowData(),
    );
  }
}
