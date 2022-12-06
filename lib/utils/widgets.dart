
import 'package:expand_tap_area/expand_tap_area.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_hole_master/utils/colors.dart';
import 'package:flutter_app_hole_master/utils/styles.dart';
import 'package:flutter_app_hole_master/utils/utils.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../controllers/state_controllers/main_screen_controller.dart';

class MyScaffold extends StatelessWidget {
  final Widget? body, drawer, bottomNavigationBar;
  final PreferredSizeWidget? appBar;
  final Color backgroundColor;
  final Key? scaffoldKey;
  bool? resizeToAvoidBottomInset = true, extendBody, extendBodyBehindAppBar;

  MyScaffold({
    Key? key,
    this.body,
    this.drawer,
    this.appBar,
    this.bottomNavigationBar,
    this.backgroundColor = Colors.amber,
    this.scaffoldKey,
    this.extendBody = true,
    this.extendBodyBehindAppBar = false,
    this.resizeToAvoidBottomInset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      backgroundColor: backgroundColor,
      appBar: appBar,
      body: body,
      drawer: drawer,
      bottomNavigationBar: bottomNavigationBar,
      extendBody: extendBody!,
      extendBodyBehindAppBar: extendBodyBehindAppBar!,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
    );
  }
}
class CustomButton extends StatelessWidget {
  CustomButton({Key? key, this.color = Colors.amber, this.title, this.onTap})
      : super(key: key);
  Color? color;
  Widget? title;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: const StadiumBorder(),
      child: ListTile(
        onTap: onTap,
        dense: true,
        shape: const StadiumBorder(),
        tileColor: color,
        title: title,
      ),
    );
  }
}
class CustomizedButton extends StatelessWidget {
  final String text, text2;
  final String imgb;
  final String imgf;
  final double verticalPadding;
  final Color textColor;
  final double buttonWidth;
  final double buttonHeight;
  final Color imageColor;
  final double imageHeight;
  final double imageWidth, spaceBetweenImgText;

  final TextStyle? textStyle, textStyle2;
  const CustomizedButton(
      {Key? key,
        required this.text,
        this.text2 = '',
        this.verticalPadding = 0,
        this.textColor = Colors.white,
        this.imgf = '',
        this.imgb = '',
        this.buttonWidth = 174,
        this.buttonHeight = 44,
        this.imageHeight = 20,
        this.imageWidth = 20,
        this.textStyle,
        this.textStyle2,
        this.imageColor = Colors.white,
        this.spaceBetweenImgText = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        child: SizedBox(
          height: buttonHeight,
          width: buttonWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isEmpty(imgb)
                  ? Container()
                  : Row(
                children: [
                  Image.asset(
                    imgb,
                    height: imageHeight,
                    width: imageWidth,
                    color: imageColor,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              horizontalSpace(width: spaceBetweenImgText),
              Row(
                children: [
                  Text(
                    text,
                    style: textStyle,
                  ),
                  isEmpty(text2)
                      ? Container()
                      : Text(
                    text2,
                    style: textStyle2,
                  ),
                ],
              ),
              isEmpty(imgf)
                  ? Container()
                  : Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    imgf,
                    height: imageHeight,
                    width: imageWidth,
                    color: imageColor,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class CircularAvatarWithAssetImage extends StatelessWidget {
  final String imagePath;
  final double imageSize, imageWidth, imageHeight;
  var fit;
  CircularAvatarWithAssetImage({
    Key? key,
    required this.imagePath,
    required this.imageSize,
    this.imageWidth = 0.0,
    this.imageHeight = 0.0,
    this.fit = BoxFit.fill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (imageWidth > 0) ? imageWidth : imageSize,
      height: (imageHeight > 0) ? imageHeight : imageSize,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(imageSize),
          child: Image.asset(
            imagePath,
            fit: fit,
          )),
    );
  }
}
class CutomizedTextField extends StatelessWidget {
  String ? sufixImage, hintText;
  bool passwordVisible;
  TextInputType? keyboard;
  String? textlimit;
  TextEditingController? descriptionController;
  final FormFieldValidator<String>? validator;
  // final Function(bool)? callbackFocus;
  void Function(String? data)? saveData;
  int maxlines;
  int? max, maxChar;
  bool autoFocus;
  Color hintColor, shadowColor, textStyleColor;

  CutomizedTextField({
    Key? key,
    required this.passwordVisible,
    required this.keyboard,
    this.textlimit,
    this.max,
    this.hintColor = Colors.white,
    this.shadowColor = Colors.black26,
    this.descriptionController,
    this.textStyleColor = Colors.black,
    this.sufixImage = "",
    this.hintText = "",
    required this.saveData,
    this.maxlines = 1,
    this.validator,
    this.maxChar,
    this.autoFocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      opacity: 1, // Default: 0.5
      color: shadowColor,
      offset: const Offset(0, 0), // Default: Offset(2, 2)
      sigma: 1,
      child: TextFormField(
        style: TextStyle(
            color: textStyleColor, decorationThickness: 0, fontSize: 14),
        autofocus: autoFocus,
        maxLines: maxlines,
        onFieldSubmitted: (_) => FocusScope.of(context).nextFocus(),
        textInputAction: TextInputAction.next,
        validator: validator,
        maxLength: max,
        controller: descriptionController,
        keyboardType: keyboard,
        obscureText: passwordVisible,
        cursorColor: Colors.red,
        decoration: InputDecoration(
          counterText: '',
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4.0),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintStyle: TextStyle(
            color: hintColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
          hintText: hintText,
          prefixIconConstraints: const BoxConstraints(),
          // suffixIcon: (sufixImage.isNotEmpty)
          //     ? Image.asset(
          //       sufixImage,
          //       height: 6,
          //       width: 12,
          //     )
          //     : null,
        ),
        onSaved: saveData,
        onChanged: (value) {},
        // buildCounter: (context, {required currentLength,required isFocused, maxLength}) {
        //   return Text('');
        // },
      ),
    );
  }
}
class MySecondAppBar extends StatefulWidget {
  MySecondAppBar({
    this.appbarText1 = '',
    this.appbarText = '',
    this.appbarLogo = '',
    this.appbarRightLogo = '',
    this.istrue = true,
    this.color = Colors.black,
    required this.onPress,
    this.textStyleRight,
    this.require20 = false,
    this.appbarIcon2NotificationNumber = '7',
    // this.onpressRight,
    this.fontStyle = FontStyle.italic,
    Key? key,
  }) : super(key: key);
  String appbarLogo, appbarText, appbarText1, appbarRightLogo;
  Color color;
  bool require20, istrue;
  VoidCallback onPress;
  dynamic fontStyle;
  String appbarIcon2NotificationNumber;
  TextStyle? textStyleRight;

  @override
  State<MySecondAppBar> createState() => _MySecondAppBarState();
}

class _MySecondAppBarState extends State<MySecondAppBar> {
  // Function()? onpressRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.istrue
          ? EdgeInsets.symmetric(horizontal: 16)
          : EdgeInsets.only(left: 12, right: 12),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExpandTapWidget(
                tapPadding: EdgeInsets.all(30),
                onTap: (() {
                  MainScreenController mainScreenController = Get.find();
                  mainScreenController.openDrawer();
                }),
                child: Image.asset(
                  widget.appbarLogo,
                  height: 20,
                  width: 20,
                ),
              ),
              Text(
                widget.appbarText,
                style: boldWhiteText16(Colors.white, fontStyle: widget.fontStyle),
              ),
              Text(
                widget.appbarText1,
                style: boldWhiteText16(Colors.white, fontStyle: widget.fontStyle),
              ),
              // ExpandTapWidget(
              //   onTap: onPress,
              //   tapPadding: EdgeInsets.all(15),
              //   child: (appbarText1.isNotEmpty)
              //       ? Text(
              //     (appbarText1 == '1') ? '' : appbarText1,
              //     style: (textStyleRight != null)
              //         ? textStyleRight
              //         : regularWhiteText14(Colors.white),
              //   )
              //       : (appbarRightLogo.isNotEmpty)
              //       ? ((istrue)
              //       ? Container(
              //     width: 30,
              //     height: 30,
              //     child: Stack(
              //       children: [
              //         Center(
              //           child: Image.asset(
              //             appbarRightLogo.toString(),
              //             height: 20,
              //             width: 18.3,
              //             color: color,
              //           ),
              //         ),
              //         (appbarIcon2NotificationNumber.isNotEmpty)
              //             ? Positioned(
              //           child: Container(
              //             height: 16,
              //             width: ((int.tryParse(
              //                 appbarIcon2NotificationNumber) ??
              //                 0) >
              //                 9)
              //                 ? 20
              //                 : 16,
              //             decoration: BoxDecoration(
              //                 color: Colors.red,
              //                 borderRadius:
              //                 BorderRadius.circular(8)),
              //             child: Center(
              //                 child: Text(
              //                   ((int.tryParse(appbarIcon2NotificationNumber) ??
              //                       0) >
              //                       9)
              //                       ? '9+'
              //                       : appbarIcon2NotificationNumber,
              //                   style: regularWhiteText10(
              //                       Colors.white),
              //                 )),
              //           ),
              //           top: 0,
              //           right: 0,
              //         )
              //             : Container(),
              //       ],
              //     ),
              //   )
              //       : Container(
              //     child: Center(
              //       child: Image.asset(
              //         appbarRightLogo.toString(),
              //         height: 20,
              //         color: color,
              //       ),
              //     ),
              //   ))
              //       : SizedBox(),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}

