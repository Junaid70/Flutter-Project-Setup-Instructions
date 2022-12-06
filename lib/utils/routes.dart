


import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

import '../Screens/jobs_screen.dart';
import '../Screens/login_screen.dart';
import 'constants.dart';

class Routes {
  static var pages = [
    GetPage(
      name: NamedRoutes.routeLoginScreen,
      page: () => LoginScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
    ),
    GetPage(
      name: NamedRoutes.routeJobsScreen,
      page: () => JobsScreen(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 200),
    ),
  ];
}
