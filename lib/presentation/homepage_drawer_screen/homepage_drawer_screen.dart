import 'controller/homepage_drawer_controller.dart';
import 'package:flutter/material.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomepageDrawerScreen extends GetWidget<HomepageDrawerController> {
  const HomepageDrawerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.black900.withOpacity(0.6),
        body: SizedBox(
          width: 800.h,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(right: 490.h),
              padding: EdgeInsets.symmetric(vertical: 30.v),
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgTriangleemptyrotate,
                    height: 48.adaptSize,
                    width: 48.adaptSize,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 16.h),
                  ),
                  SizedBox(height: 100.v),
                  Divider(),
                  SizedBox(height: 19.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildVariant10WithPhysicalFitness(
                      userImage: ImageConstant.imgViewDashboardOutline,
                      headingText: "msg_devices_and_accessories".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildVariant10WithPhysicalFitness(
                      userImage: ImageConstant.imgViewDashboardOutlineBlack900,
                      headingText: "msg_physical_fitness".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildVariant10WithPhysicalFitness(
                      userImage: ImageConstant.imgViewDashboardOutlineBlack900,
                      headingText: "msg_language_proficiency".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildVariant10WithPhysicalFitness(
                      userImage: ImageConstant.imgViewDashboardOutlineBlack900,
                      headingText: "msg_travel_abroad_advice".tr,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.h),
                    child: _buildVariant10WithPhysicalFitness(
                      userImage: ImageConstant.imgViewDashboardOutlineBlack900,
                      headingText: "lbl_hanou_id".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildVariant10WithPhysicalFitness({
    required String userImage,
    required String headingText,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 24.v,
            width: 19.h,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 11.h,
              top: 3.v,
            ),
            child: Text(
              headingText,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.black900.withOpacity(0.87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
