part of 'styles.dart';

class AppFonts {
  static TextStyle getAppFont(
      {FontWeight? fontWeight, Color? color, double? fontSize}) {
    return GoogleFonts.lexendDeca(
        textStyle: TextStyle(
      color: color,
      fontWeight: fontWeight,
      fontSize: fontSize,
    ));
  }

  static final appHeaderBlack = getAppFont(
      fontWeight: FontWeight.w900,
      color: TextColors.appHeaderBlack,
      fontSize: 32);

  static final appSubHeader = getAppFont(
      fontWeight: FontWeight.normal,
      color: TextColors.primaryColor,
      fontSize: 16);

  static final mediumTextBB = getAppFont(
      fontWeight: FontWeight.bold,
      color: TextColors.appHeaderBlack,
      fontSize: 16);
  static final largeTextBB = getAppFont(
      fontWeight: FontWeight.bold,
      color: TextColors.appHeaderBlack,
      fontSize: 24);

  static final smallTextBB = getAppFont(
      fontWeight: FontWeight.bold,
      color: TextColors.appHeaderBlack,
      fontSize: 13);

  static final labelTextWR = getAppFont(
      fontWeight: FontWeight.normal,
      color: TextColors.primaryColor,
      fontSize: 18);

  static final buttonTextBB = getAppFont(
    fontWeight: FontWeight.bold,
    color: TextColors.secondaryColor,
    fontSize: 16,
  );
  static final hintText14 = getAppFont(
    fontWeight: FontWeight.normal,
    color: TextColors.hintText,
    fontSize: 14,
  );
  static final inputTextWR = getAppFont(
      fontWeight: FontWeight.normal,
      color: TextColors.primaryColor,
      fontSize: 16);
  static final buttonTextWR = getAppFont(
      fontWeight: FontWeight.normal,
      color: TextColors.primaryColor,
      fontSize: 16);
  static final smallText12 = getAppFont(
      fontWeight: FontWeight.normal,
      color: TextColors.themeColor,
      fontSize: 12);
  static final themeText = getAppFont(
      fontWeight: FontWeight.normal,
      color: TextColors.themeColor,
      fontSize: 18);
  static final labelSubTextBG = getAppFont(
    fontWeight: FontWeight.w900,
    color: Colors.white.withOpacity(0.5),
    fontSize: 14,
  );
  static final activeTabTextBB = getAppFont(
    fontWeight: FontWeight.w900,
    color: TextColors.activeTabTextColor,
    fontSize: 24,
  );
  static final inActiveTabTextRB = getAppFont(
    fontWeight: FontWeight.w400,
    color: TextColors.inActiveTabTextColor,
    fontSize: 16,
  );
}
