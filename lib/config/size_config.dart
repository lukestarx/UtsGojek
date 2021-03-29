import 'package:flutter/widgets.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenwidth;
  static double screenheight;
  static double blockHorizontal;
  static double blockVertical;

  void int (BuildContext context){
    _mediaQueryData = MediaQuery.of(context);
    screenheight = _mediaQueryData.size.height;
    screenwidth = _mediaQueryData.size.height;
    blockHorizontal = screenwidth / 100;
    blockVertical = screenheight / 100;
  }
}