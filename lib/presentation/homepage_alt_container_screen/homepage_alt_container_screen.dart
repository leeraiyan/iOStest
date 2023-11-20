import 'controller/homepage_alt_container_controller.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/presentation/homepage_alt_page/homepage_alt_page.dart';
import 'package:across_europe/presentation/userpage_page/userpage_page.dart';
import 'package:across_europe/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class HomepageAltContainerScreen
    extends GetWidget<HomepageAltContainerController> {
  const HomepageAltContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.homepageAltPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 0.h),
                child: _buildBottomBar())
                )
                
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepageAltPage;
      case BottomBarEnum.Camps:
        return "/";
      case BottomBarEnum.Community:
        return "/";
      case BottomBarEnum.User:
        return AppRoutes.userpagePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageAltPage:
        return HomepageAltPage();
      case AppRoutes.userpagePage:
        return UserpagePage();
      default:
        return DefaultWidget();
    }
  }
}
