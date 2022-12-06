import 'package:flutter/cupertino.dart';

bool isNotEmpty(value) {
  if (value != null && value != '') {
    return true;
  }
  return false;
}

bool isEmpty(value) {
  if (value == null || value == '') {
    return true;
  }
  return false;
}

verticalSpace({double height = 10.0}) {
  return SizedBox(
    height: (height).toDouble(),
  );
}

horizontalSpace({double width = 10}) {
  return SizedBox(
    width: (width).toDouble(),
  );
}

String formatHHMMSS(int? seconds) {
  if (seconds != null && seconds != 0) {
    int hours = (seconds / 3600).truncate();
    seconds = (seconds % 3600).truncate();
    int minutes = (seconds / 60).truncate();

    String hoursStr = (hours).toString().padLeft(2, '0');
    String minutesStr = (minutes).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    return "${hoursStr}h:${minutesStr}m:${secondsStr}s";
  } else {
    return "00h:00m:00s";
  }
}
