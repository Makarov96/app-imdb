class ResponsiveWidget{

  static bool isScreenLarge(double width, double pixel) {
    return width * pixel >= 1540;
  }

  static bool isScreenMedium(double width, double pixel) {
    return width * pixel < 1440 && width * pixel >=1080;
  }

  static bool isScreenSmall(double width, double pixel) {
    return width * pixel <= 720;
  }
}