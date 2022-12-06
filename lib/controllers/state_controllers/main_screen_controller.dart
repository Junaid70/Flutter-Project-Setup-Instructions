import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreenController extends GetxController {
  GlobalKey<ScaffoldState> scaffoldState = GlobalKey();

  openDrawer() {
    scaffoldState.currentState!.openDrawer();
  }

  closeDrawer() {
    scaffoldState.currentState!.openEndDrawer();
  }
}
