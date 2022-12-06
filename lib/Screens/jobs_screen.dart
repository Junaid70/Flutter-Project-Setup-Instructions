
import 'package:flutter/material.dart';
import 'package:flutter_app_hole_master/utils/constants.dart';
import 'package:flutter_app_hole_master/utils/styles.dart';
import 'package:get/get.dart';
import '../controllers/state_controllers/main_screen_controller.dart';
import '../service_locator.dart';
import '../utils/colors.dart';
import '../utils/form_helper.dart';
import '../utils/utils.dart';
import '../utils/widgets.dart';

class JobsScreen extends StatefulWidget {
  JobsScreen({Key? key}) : super(key: key);
  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  final CustomFormHelper _customFormHelper = getIt<CustomFormHelper>();
  late MainScreenController mainScreenController;
  @override
  void initState() {
    super.initState();
    mainScreenController = Get.put(MainScreenController());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    FocusScopeNode currentFocus = FocusScope.of(context);
    return GestureDetector(
      onTap: () {
        _customFormHelper.checkfocus(context, currentFocus);
      },
      child: MyScaffold(
        scaffoldKey: mainScreenController.scaffoldState,
        drawer: getDrawer(size),
        backgroundColor: Colors.black12,
        body: getBody(size),
        appBar: PreferredSize(
          child: Container(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                verticalSpace(height: 50),
                MySecondAppBar(
                    fontStyle: FontStyle.normal,
                    appbarLogo: 'assets/images/ic_menu.png',
                    appbarText: 'HOLE MASTERS',
                    onPress: (){}),
              ],
            ),

          ), preferredSize: Size.fromHeight(70),),resizeToAvoidBottomInset: false,
      ),
    );
  }
  getDrawer(Size size){
    return Drawer(
      backgroundColor: darkGreyColor,
      child: Column(
        children: [
          verticalSpace(height: 50),
          Container(

            padding: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
              child: Text("HOLE MASTER",style: boldWhiteText18(Colors.white),)),
          verticalSpace(height: 16),
          Container(
            width: Get.width,
            color: Colors.teal,
            padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
            child: Text("Jobs",style: regularWhiteText14(Colors.white),),
          ),
          Expanded(child: Container()),
          GestureDetector(
            onTap: (){
              MainScreenController _mainScreenController = Get.find();
              _mainScreenController.closeDrawer();
              Get.toNamed(NamedRoutes.routeLoginScreen);

            },
            child: Container(
              width: Get.width,
              color: Colors.teal,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: Text("Log Out",style: regularWhiteText14(Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
  getBody(Size size) {
    return  Container(
      alignment: Alignment.center,
      child: Column(
        children: [
          Text("Jobs",style: regularWhiteText18(Colors.white),),
          verticalSpace(height: 40),
          Column(
            children: List.generate(3, (index){
              return Container(
                margin: EdgeInsets.only(bottom: 8),
                padding: EdgeInsets.symmetric(vertical: 16,horizontal: 10),
                color:darkGreyColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Client: Mcdonalds",style: regularWhiteText12(Colors.white),),
                          Text("2543 old Mcdonalds farm",style: regularWhiteText12(Colors.white),),

                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Text("REF: MAN25486",style: regularWhiteText12(Colors.white),),
                          horizontalSpace(),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 2),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.red,width: 1),
                            ),
                            child: Text("Stage 1",style: regularWhiteText12(Colors.white),),
                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
          Container(
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: 10),
        color:darkGreyColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Client: Nandos",style: regularWhiteText12(Colors.white),),
                  Text("93 Chikenville Avenue",style: regularWhiteText12(Colors.white),),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text("REF: MAN25486",style: regularWhiteText12(Colors.white),),
                  horizontalSpace(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Text("Complete",style: regularWhiteText12(Colors.white),),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
        ],
      ),
    );
  }
}
