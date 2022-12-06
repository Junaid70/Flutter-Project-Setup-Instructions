import 'package:flutter/material.dart';

import 'colors.dart';

bixRectangularAppBarBoxDecorationWithRadiusElevation(
    double radius,
    double elevation, {
      Color? color,
      Color? borderColor,
      Color? shadowColor,
    }) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: (color != null) ? color : Colors.amber,
        border: Border.all(
            color: (borderColor != null) ? borderColor : Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: (shadowColor != null) ? shadowColor : Colors.amber,
            offset: const Offset(0.0, 0.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);