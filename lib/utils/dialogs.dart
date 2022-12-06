import 'package:flutter/material.dart';

enum DialogType { dialog, bottomSheet }

showFullWidthDialogBox(
  BuildContext context,
  Widget child,
  isCancelable,
  DialogType type,
) {
  if (type == DialogType.dialog) {
    showDialog(
      barrierDismissible: isCancelable,
      context: context,
      builder: (context) => Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        insetPadding: const EdgeInsets.symmetric(horizontal: 20),
        child: child,
      ),
    );
  } else {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      elevation: 0,
      context: context,
      isDismissible: isCancelable,
      builder: (context) => child,
    );
  }
}

showFullWidthDialog(BuildContext context, Widget child, isCancelable) {
  return showDialog(
    barrierDismissible: isCancelable,
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20),
      child: child,
    ),
  );
}

showDialogwith100(BuildContext context, Widget child, isCancelable) {
  showDialog(
    barrierDismissible: isCancelable,
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(horizontal: 40),
      child: child,
    ),
  );
}

showDialogwithnoPadding(BuildContext context, Widget child, isCancelable) {
  showDialog(
    barrierDismissible: isCancelable,
    context: context,
    builder: (context) => Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      elevation: 0,
      child: child,
    ),
  );
}
