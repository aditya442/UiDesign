import 'dart:ui';
import 'package:flutter/material.dart';
import './designUtils.dart';
import 'package:shimmer/shimmer.dart';

class DesignUtil {
  static double fs8,
      fs9,
      fs10,
      fs11,
      fs12,
      fs13,
      fs14,
      fs15,
      fs16,
      fs18,
      fs20,
      fs22,
      fs24;

  static double fontSize(double height, double inputValue) {
    return FontSizeAutomation.fontSizeConfig(height, inputValue);
  }

  static const NEOSANS = "NeoSans";
  static const ROBOTO = "Roboto";
  static const PRODUCTSANS = "ProductSans";
  static const primary_blue = Color(0xff1f419b);
  static const transparent_light_grey = Color(0xb3cccccc);
  static const transparent_grey = Color(0x90cccccc);
  static const transparent_dark_grey = Color(0xcc555555);
  static const transparent_black = Color(0x90000000);
  static const default_text_color = Color(0xff323232);
  static const bottom_text_color = Color(0xff5f5f5f);
  static const shimmer_base_color = Color(0xffefefef);
  static const shimmer_highlight_color = Color(0xffffffff);
  static const primary_yellow = Color(0xfffaa61a);
  static const cicilan_container_color = Color(0xfff8a419);
  static const transparent_red = Color(0x19e8272d);
  static const grey = Color(0xffb3b3b3);
  static const background_container_grey = Color(0xfff7f7f9);
  static const font_black = Color(0xff2f2f2f);
  static const battleship_grey = Color(0xff6d7278);

  static TextStyle textProductSans(double fontSize, Color color,
      {FontWeight fontWeight = FontWeight.w400}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: PRODUCTSANS,
          fontSize: fontSize);

  static TextStyle productSans10_5(Color color,
      {FontWeight fontWeight = FontWeight.w400, double fontSize = 10.5}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: PRODUCTSANS,
          fontSize: fontSize);

  static TextStyle productSans12(Color color,
      {FontWeight fontWeight = FontWeight.w400, double fontSize = 12}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: PRODUCTSANS,
          fontSize: fontSize);

  static TextStyle productSans14(Color color,
      {FontWeight fontWeight = FontWeight.w400, double fontSize = 14}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: PRODUCTSANS,
          fontSize: fontSize);

  static TextStyle productSansBold14(Color color,
      {FontWeight fontWeight = FontWeight.w700, double fontSize = 14}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: PRODUCTSANS,
          fontSize: fontSize);

  static TextStyle textNeosans(double fontSize, Color color,
      {FontWeight fontWeight = FontWeight.w400}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: NEOSANS,
          fontStyle: FontStyle.normal,
          fontSize: fontSize);

  static var textNeosansBlackH2 = TextStyle(
      color: const Color(0xff323232),
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textNeosansBlackBoldH1 = TextStyle(
      color: const Color(0xff323232),
      fontWeight: FontWeight.w700,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs16);

  static var textNeosansBlackBoldH2 = TextStyle(
      color: const Color(0xff323232),
      fontWeight: FontWeight.w700,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textNeosansBlackH3 = TextStyle(
      color: const Color(0xff323232),
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs13);

  static var textNeosansWhiteH3 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textNeosansWhiteH2 = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textNeosansRedBoldH1 = TextStyle(
      color: const Color(0xffe8272d),
      fontWeight: FontWeight.w700,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs16);

  static var textNeosansRedH2 = TextStyle(
      color: const Color(0xffe8272d),
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textNeosansBlueH3 = TextStyle(
      color: primary_blue,
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textNeosansBlueH2 = TextStyle(
      color: primary_blue,
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textNeosansBlueBoldH2 = TextStyle(
      color: primary_blue,
      fontWeight: FontWeight.w700,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textNeosansBlueH1 = TextStyle(
      color: primary_blue,
      fontWeight: FontWeight.w700,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs16);

  static var textNeosansGreyH3 = TextStyle(
      color: const Color(0xff5f5f5f),
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textRobotoBlackH3 = TextStyle(
      color: const Color(0xff5f5f5f),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static TextStyle textRoboto(double fontSize, Color color,
      {FontWeight fontWeight = FontWeight.w400}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: "Roboto",
          fontStyle: FontStyle.normal,
          fontSize: fontSize);

  static TextStyle textSans(double fontSize, Color color,
      {FontWeight fontWeight = FontWeight.w400}) =>
      TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontFamily: "NeoSans",
          fontStyle: FontStyle.normal,
          fontSize: fontSize);

  static var textBannerTitle = TextStyle(
      color: const Color(0xdeffffff),
      fontWeight: FontWeight.w500,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textSimulasiCicilanNominal = TextStyle(
      color: const Color(0xff212121),
      fontWeight: FontWeight.w700,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textBannerSubtitle = TextStyle(
      color: const Color(0xdeffffff),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textPilihPembayaranH2 = TextStyle(
      color: const Color(0xff25282b),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textPilihPembayaranH1 = TextStyle(
      color: const Color(0xff25282b),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs16);

  static var textPilihPembayaranBtn = TextStyle(
      color: const Color(0xff224097),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textProductDetailCicilan = TextStyle(
      color: primary_blue,
      fontWeight: FontWeight.w500,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textProductDesc = TextStyle(
      color: const Color(0xff5c5c5c),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textProductVariant = TextStyle(
      color: const Color(0xff323232),
      fontWeight: FontWeight.w500,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textInfoSimulasiCicilan = TextStyle(
      color: const Color(0xff212121),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textInfoSimulasi14 = TextStyle(
      color: const Color(0xff212121),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs14);

  static var textDPRed = TextStyle(
      color: const Color(0xffe8272d),
      fontWeight: FontWeight.w400,
      fontFamily: "Roboto",
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textVariantTitle = TextStyle(
    color: const Color(0xde000000),
    fontWeight: FontWeight.w500,
    fontFamily: NEOSANS,
    fontStyle: FontStyle.normal,
    fontSize: fs16,
  );

  static var textVariantStockTitle = TextStyle(
    color: const Color(0xffe8272d),
    fontWeight: FontWeight.w400,
    fontFamily: NEOSANS,
    fontStyle: FontStyle.normal,
    fontSize: fs14,
  );

  static var textVariantDesc = TextStyle(
    color: const Color(0xff323232),
    fontWeight: FontWeight.w400,
    fontFamily: "Roboto",
    fontStyle: FontStyle.normal,
    fontSize: fs12,
  );

  static var textVariantChip = TextStyle(
    color: const Color(0xff1f419b),
    fontWeight: FontWeight.w400,
    fontFamily: NEOSANS,
    fontStyle: FontStyle.normal,
    fontSize: fs12,
  );

  static var textCategoryStyle = TextStyle(
      color: default_text_color,
      fontWeight: FontWeight.w400,
      fontFamily: ROBOTO,
      fontStyle: FontStyle.normal,
      fontSize: fs13);

  static var textLoginInvitation = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w400,
      fontFamily: DesignUtil.ROBOTO,
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textPriceNormal = TextStyle(
    color: const Color(0xffe8272d),
    fontWeight: FontWeight.w500,
    fontFamily: NEOSANS,
    fontStyle: FontStyle.normal,
    fontSize: fs16,
  );

  static var textPriceStrike = TextStyle(
      color: const Color(0xff999999),
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs12,
      decoration: TextDecoration.lineThrough);

  static var textPriceCicilan = TextStyle(
    color: const Color(0xff323232),
    fontWeight: FontWeight.w500,
    fontFamily: NEOSANS,
    fontStyle: FontStyle.normal,
    fontSize: fs12,
  );

  static var textLoginInvitationYellow = TextStyle(
      color: DesignUtil.primary_yellow,
      fontWeight: FontWeight.w400,
      fontFamily: DesignUtil.ROBOTO,
      fontStyle: FontStyle.normal,
      fontSize: fs12);

  static var textProductListTitle = TextStyle(
      color: const Color(0xff474747),
      fontWeight: FontWeight.w400,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs15);

  static var textProductDetailPrice = TextStyle(
      color: const Color(0xffe8272d),
      fontWeight: FontWeight.w500,
      fontFamily: NEOSANS,
      fontStyle: FontStyle.normal,
      fontSize: fs18);

  static void formatFont(double height) {
    fs8 = fontSize(height, 8);
    fs9 = fontSize(height, 9);
    fs10 = fontSize(height, 10);
    fs11 = fontSize(height, 11);
    fs12 = fontSize(height, 12);
    fs13 = fontSize(height, 13);
    fs14 = fontSize(height, 14);
    fs15 = fontSize(height, 15);
    fs16 = fontSize(height, 16);
    fs18 = fontSize(height, 18);
    fs20 = fontSize(height, 20);
    fs22 = fontSize(height, 22);
    fs24 = fontSize(height, 24);
  }

  static Widget shimmerText(double width, double height) {
    return Shimmer.fromColors(
        baseColor: DesignUtil.shimmer_base_color,
        highlightColor: DesignUtil.shimmer_highlight_color,
        child: Container(
          width: width,
          height: height,
          color: Colors.grey,
        ));
  }

  static Widget shimmerRounded(double width, double height) {
    return Shimmer.fromColors(
        baseColor: DesignUtil.shimmer_base_color,
        highlightColor: DesignUtil.shimmer_highlight_color,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ));
  }

  static double queryWidth(BuildContext context) =>
      MediaQuery.of(context).size.width;
  static double queryHeight(BuildContext context) =>
      MediaQuery.of(context).size.width;

  static double shortestSide(BuildContext context) =>
      MediaQuery.of(context).size.shortestSide;

  static bool isTablet(BuildContext context) => shortestSide(context) >= 600;

  static Widget custTextField(
      var controller, TextAlign textAlign, TextStyle textStyle) {
    return TextField(
      textAlign: textAlign,
      enabled: false,
      controller: controller,
      maxLines: 1,
      readOnly: true,
      style: textStyle,
      decoration: InputDecoration(
        disabledBorder:
        UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
      ),
    );
  }

  static Widget dotCircle(Color col) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(color: col, shape: BoxShape.circle),
    );
  }
}

class FontSizeAutomation{

  static double  fontSizeConfig(double height,double fontSizeInput){
    if(height < 750){
      return height * fontSizeInput/666 - 0.95;
    }else if (height > 750 && height < 1000){
      return height * fontSizeInput/666 - 3.8;
    }else{
      return height * fontSizeInput/666;
    }
  }
}