import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../feature/featureFour_dataView/repo/dataShow_impl.dart';
import '../../feature/featureFour_dataView/screen/show_screen.dart';
import '../../feature/featureThree_login/bloc/login_bloc.dart';
import '../../feature/featureThree_login/repo/loginShow_impl.dart';
import '../../feature/featureThree_login/screen/login_screen.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/login":
        return MaterialPageRoute(
          builder: (context) => MultiBlocProvider(
            providers: [
              // BlocProvider<InternetCubit>(
              //   create: (context) => InternetCubit(),
              // ),
              BlocProvider<LogInBloc>(
                create: (context) => LogInBloc(LoginRepo()),
              )
            ],
            child: LoginScreen(),
          ),
        );
      // case "/home":
      //   Map<String, dynamic> arguments =
      //               settings.arguments as Map<String, dynamic>;
      //   return MaterialPageRoute(
      //   builder: (context) => RepositoryProvider(
      //     create: (context) => DataShowRepo(),
      //     child: Home(
      //       ex: arguments["ex"],
      //       email: arguments["email"],
      //       token: arguments["token"],
      //     ),
      //   ),
      // );
      //
      case "/showScreen":
        return MaterialPageRoute(
          builder: (context) => RepositoryProvider(
            create: (context) => DataShowRepo(),
            child: ShowScreen(),
          ),
        );
      //     case "/showScreenTwo":
      //       return MaterialPageRoute(
      //       builder: (context) => RepositoryProvider(
      //         create: (context) => DataShowRepoTwo(),
      //         child: ShowScreenTwo(),
      //       ),
      //     );
      //       case "/complex":
      //         return MaterialPageRoute(
      //         builder: (context) => RepositoryProvider(
      //           create: (context) => ComplexRepo(),
      //           child: ComplexScreen(),
      //         ),
      //       );
      //
      //         case "/complexTwo":
      //           return MaterialPageRoute(
      //           builder: (context) => RepositoryProvider(
      //             create: (context) => ComplexTwoRepo(),
      //             child: ComplexTwoScreen(),
      //           ),
      //         );

      // case "/todayDetails":
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositoryTodayTenderDetails(),
      //       child: TodayTenderDetailsScreen(),
      //     ),
      //   );
      // case "/corrigenDetails":
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositoryCorrigenTenderDetails(),
      //       child: CorrigenTenderDetailsScreen(),
      //     ),
      //   );
      // case "/privateDetails":
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositoryPrivateTenderDetails(),
      //       child: PrivateTenderDetailsScreen(),
      //     ),
      //   );
      // case "/liveDetails":
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositoryLiveTenderDetails(),
      //       child: LiveTenderDetailsScreen(),
      //     ),
      //   );
      // case "/savetendershow":
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositorySaveTenderShow(),
      //       child: SaveTenderShowScreen(),
      //     ),
      //   );
      // case "/registration":
      //   return MaterialPageRoute(
      //     builder: (context) => Registration(),
      //   );
      // case "/categorygroup":
      //   Map<String, dynamic> arguments =
      //       settings.arguments as Map<String, dynamic>;
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositoryCategoryGroup(),
      //       child: CategoryGroup(
      //         name: arguments["namer"],
      //         designation: arguments["degicnation"],
      //         organization: arguments["organization"],
      //         phoneNum: arguments["phoneNum"],
      //         emailFirst: arguments["emailFirst"],
      //         password: arguments["password"],
      //         group: arguments["group"],
      //       ),
      //     ),
      //   );
      // case "/relatedgroup":
      //   Map<String, dynamic> arguments =
      //       settings.arguments as Map<String, dynamic>;
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositoryRelatedCategory(),
      //       child: ReletedCategory(
      //         tGHCode: arguments["tGHCode"],
      //         name: arguments["namer"],
      //         designation: arguments["degicnation"],
      //         organization: arguments["organization"],
      //         phoneNum: arguments["phoneNum"],
      //         emailFirst: arguments["emailFirst"],
      //         password: arguments["password"],
      //         group: arguments["group"],
      //       ),
      //     ),
      //   );
      //
      // case "/option":
      //   Map<String, dynamic> arguments =
      //       settings.arguments as Map<String, dynamic>;
      //   return MaterialPageRoute(
      //     builder: (context) => RepositoryProvider(
      //       create: (context) => RepositoryOption(),
      //       child: Option(
      //         tGHCode: arguments["tGHCode"],
      //         name: arguments["namer"],
      //         designation: arguments["degicnation"],
      //         organization: arguments["organization"],
      //         phoneNum: arguments["phoneNum"],
      //         emailFirst: arguments["emailFirst"],
      //         password: arguments["password"],
      //         group: arguments["group"],
      //       ),
      //     ),
      //   );
      default:
        return null;
    }
  }
}
