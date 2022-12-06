import 'package:flutter/material.dart';
import 'package:flutter_app_hole_master/service_locator.dart';
import 'package:flutter_app_hole_master/utils/constants.dart';
import 'package:flutter_app_hole_master/utils/routes.dart';
import 'package:get/get.dart';

Future<void> main() async {
  await WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      checkerboardOffscreenLayers: false,
      title: 'Hole Master',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFEFEFEF),
      ),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      initialRoute: NamedRoutes.routeLoginScreen,
      getPages: Routes.pages,
    );
  }
}
