
import 'package:flutter/material.dart';
import 'package:flutter_app_hole_master/utils/constants.dart';
import 'package:flutter_app_hole_master/utils/styles.dart';
import 'package:get/get.dart';
import '../service_locator.dart';
import '../utils/colors.dart';
import '../utils/form_helper.dart';
import '../utils/utils.dart';
import '../utils/widgets.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final CustomFormHelper _customFormHelper = getIt<CustomFormHelper>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    FocusScopeNode currentFocus = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        _customFormHelper.checkfocus(context, currentFocus);
      },
      child: MyScaffold(
        backgroundColor: Colors.black12,
        body: getBody(size),
        resizeToAvoidBottomInset: false,
      ),
    );
  }

  getBody(Size size) {
    return  Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("HOLE MASTER",style: boldWhiteText18(Colors.white),),
                  verticalSpace(height: 20),
                ],
              ),
            ),
          ),
          Container(
            width: Get.width,
            color:darkGreyColor,
            child:Padding(
              padding:   const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  verticalSpace(),
                  Text("Login",style: regularWhiteText18(Colors.white),),
                  verticalSpace(height: 16),
                  Container(
                    alignment: Alignment.centerLeft,
                      child: Text("E-mail",style: regularWhiteText14(Colors.white),)),
                  verticalSpace(height: 4),
                  CutomizedTextField(
                    passwordVisible: false,
                    keyboard: null,
                    saveData: (String? data) {  },
                  ),
                  verticalSpace(height: 4),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",style: regularWhiteText14(Colors.white),)),
                  verticalSpace(height: 4),
                  CutomizedTextField(
                    passwordVisible: true,
                    keyboard: null,
                    saveData: (String? data) {  },
                  ),
                  verticalSpace(),
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(NamedRoutes.routeJobsScreen);
                    },
                    child: Container(
                      width: 100,
                      decoration:  const BoxDecoration(
                        color: Colors.green,
                      ),
                      child: CustomizedButton(
                        textColor: Colors.white,
                        text: 'LOG IN',
                        textStyle: regularWhiteText14(Colors.white),


                      ),
                    ),
                  ),
                  verticalSpace(),

                ],
              ),
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
