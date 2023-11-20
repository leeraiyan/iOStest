import 'controller/splash_controller.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [appTheme.gray100, appTheme.gray300])),
                child: SizedBox(
                    width: double.maxFinite,
                    child: CustomImageView(
                        imagePath: ImageConstant.imgLogoAcrosseurope,
                        height: 104.adaptSize,
                        width: 104.adaptSize,
                        alignment: Alignment.center)))));
  }
}
