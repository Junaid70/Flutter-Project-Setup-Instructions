
import 'package:flutter_app_hole_master/utils/custom_alerts.dart';
import 'package:flutter_app_hole_master/utils/custom_validator.dart';
import 'package:flutter_app_hole_master/utils/form_helper.dart';
import 'package:flutter_app_hole_master/utils/function_response.dart';
import 'package:get_it/get_it.dart';
import 'utils/connectivity_helper.dart';
final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Custom Utilities
  getIt.registerFactory(() => FunctionResponse());
  getIt.registerFactory(() => CustomAlerts());
  getIt.registerFactory(() => CustomValidator());
  getIt.registerFactory(() => CustomFormHelper());
  getIt.registerFactory(() => ConnectivityHelper());
  // Screens
  // getIt.registerSingleton(MainScreenStore());

}
