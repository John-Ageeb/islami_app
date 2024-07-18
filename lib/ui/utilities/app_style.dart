import "dart:ui";
import "app_colors.dart";

abstract class AppStyle {
  static TextStyle appBarTextStyle = TextStyle(
      fontSize: 30, fontWeight: FontWeight.w700, color: AppColors.accent);

  static TextStyle titels = TextStyle(
      fontSize: 25, fontWeight: FontWeight.w400, color: AppColors.accent);
}
