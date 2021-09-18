import 'package:flutter/material.dart';

double getWidth({required double ratio, required BuildContext context}) =>
    MediaQuery.of(context).size.width * ratio;

double getHeight({required double ratio, required BuildContext context}) {
  var padding = MediaQuery.of(context).padding;

  return (MediaQuery.of(context).size.height * ratio) -
      padding.top -
      padding.bottom;
}
