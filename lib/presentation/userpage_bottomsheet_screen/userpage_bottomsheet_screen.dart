import '../userpage_bottomsheet_screen/widgets/buttonbar1_item_widget.dart';
import 'controller/userpage_bottomsheet_controller.dart';
import 'models/buttonbar1_item_model.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/presentation/homepage_alt_page/homepage_alt_page.dart';
import 'package:across_europe/presentation/userpage_page/userpage_page.dart';
import 'package:across_europe/widgets/app_bar/appbar_leading_image.dart';
import 'package:across_europe/widgets/app_bar/appbar_title_image.dart';
import 'package:across_europe/widgets/app_bar/custom_app_bar.dart';
import 'package:across_europe/widgets/custom_bottom_bar.dart';
import 'package:across_europe/widgets/custom_elevated_button.dart';
import 'package:across_europe/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UserpageBottomsheetScreen
    extends GetWidget<UserpageBottomsheetController> {
  const UserpageBottomsheetScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
          height: 733.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              _buildFrameTwo(),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 175.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 40.v,
                  ),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL47,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 32.v),
                      _buildThirtyOne(),
                      Spacer(),
                      _buildButtonNavigateTo(),
                    ],
                  ),
                ),
              ),
              _buildFrameOne(),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 860.v,
                  width: double.maxFinite,
                  decoration: AppDecoration.fillBlack,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 677.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(47.h),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 15.h,
                            right: 4.h,
                            bottom: 22.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgEllipse2,
                                        height: 75.adaptSize,
                                        width: 75.adaptSize,
                                        radius: BorderRadius.circular(
                                          37.h,
                                        ),
                                        margin: EdgeInsets.only(
                                          top: 12.v,
                                          bottom: 6.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 9.h),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgTriangleempty,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              alignment: Alignment.centerRight,
                                            ),
                                            SizedBox(height: 18.v),
                                            SizedBox(
                                              width: 96.h,
                                              child: RichText(
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: "lbl_alice".tr,
                                                      style: CustomTextStyles
                                                          .titleLargeBlack900,
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          "lbl_china_female".tr,
                                                      style: CustomTextStyles
                                                          .bodySmallBlack900,
                                                    ),
                                                  ],
                                                ),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 22.v),
                              _buildTwentySix(),
                              SizedBox(height: 32.v),
                              _buildBarSocial1(),
                              SizedBox(height: 49.v),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 1.h,
                                  right: 12.h,
                                ),
                                child: CustomTextFormField(
                                  controller: controller.frameFiveController,
                                  hintText: "msg_photos_and_videos".tr,
                                  textInputAction: TextInputAction.done,
                                  maxLines: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 51.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgCiHamburgerMd,
        margin: EdgeInsets.only(
          left: 11.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Row(
          children: [
            AppbarTitleImage(
              imagePath: ImageConstant.imgImage2,
            ),
            Container(
              height: 16.v,
              width: 130.h,
              margin: EdgeInsets.only(
                left: 10.h,
                top: 7.v,
                bottom: 7.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgMail,
              margin: EdgeInsets.only(left: 10.h),
            ),
          ],
        ),
      ),
      actions: [
        Container(
          height: 16.v,
          width: 130.h,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 7.v,
            bottom: 7.v,
          ),
          decoration: BoxDecoration(
            color: appTheme.gray300,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameTwo() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 161.v,
        width: 383.h,
        margin: EdgeInsets.only(
          top: 13.v,
          right: 9.h,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: SizedBox(
                height: 156.v,
                width: 244.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGirlwave1,
                      height: 170.adaptSize,
                      width: 170.adaptSize,
                      alignment: Alignment.bottomRight,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgBoyfootball1,
                      height: 170.adaptSize,
                      width: 170.adaptSize,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 139.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_football".tr,
                        style: theme.textTheme.headlineMedium,
                      ),
                      TextSpan(
                        text: "lbl_summer_camps".tr,
                        style: CustomTextStyles.titleLargeBlack900_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildThirtyOne() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 22.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                "lbl_hi_alice".tr,
                style: theme.textTheme.headlineMedium,
              ),
              SizedBox(height: 3.v),
              Container(
                padding: EdgeInsets.symmetric(vertical: 22.v),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAchievement,
                      height: 24.v,
                      width: 40.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAchievement,
                      height: 24.v,
                      width: 40.h,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgAchievement,
                      height: 24.v,
                      width: 40.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 75.adaptSize,
            width: 75.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 27.v,
            ),
            decoration: AppDecoration.fillGray40001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder37,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgFootballwhite1,
              height: 75.adaptSize,
              width: 75.adaptSize,
              alignment: Alignment.center,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonNavigateTo() {
    return Container(
      width: 402.h,
      padding: EdgeInsets.all(9.h),
      decoration: AppDecoration.outlineBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_my_account".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 53.v),
          CustomElevatedButton(
            width: 97.h,
            text: "lbl_login_to_view".tr,
          ),
          SizedBox(height: 5.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameOne() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: 129.v),
        padding: EdgeInsets.symmetric(vertical: 11.v),
        decoration: AppDecoration.fillWhiteA,
        child: SizedBox(
          height: 218.v,
          child: Obx(
            () => ListView.separated(
              padding: EdgeInsets.only(left: 18.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 10.h,
                );
              },
              itemCount: controller.userpageBottomsheetModelObj.value
                  .buttonbar1ItemList.value.length,
              itemBuilder: (context, index) {
                Buttonbar1ItemModel model = controller
                    .userpageBottomsheetModelObj
                    .value
                    .buttonbar1ItemList
                    .value[index];
                return Buttonbar1ItemWidget(
                  model,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentySix() {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 20.v,
              bottom: 1.v,
            ),
            child: Text(
              "msg_individual_resume".tr,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 194.h,
                margin: EdgeInsets.only(
                  left: 13.h,
                  right: 21.h,
                ),
                child: Row(
                  children: [
                    Text(
                      "lbl_0".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    Spacer(
                      flex: 47,
                    ),
                    Text(
                      "lbl_10".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    Spacer(
                      flex: 52,
                    ),
                    Text(
                      "lbl_10".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 4.v),
              SizedBox(
                width: 229.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_posts".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "lbl_followers".tr,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    Text(
                      "lbl_following".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBarSocial1() {
    return Padding(
      padding: EdgeInsets.only(right: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildUserSocialButtons(
            userImage: ImageConstant.imgCamera1,
            userStatus: "lbl_post".tr,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: _buildUserSocialButtons(
              userImage: ImageConstant.imgCamera124x24,
              userStatus: "lbl_live".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildUserSocialButtons({
    required String userImage,
    required String userStatus,
  }) {
    return Container(
      width: 195.h,
      padding: EdgeInsets.symmetric(
        horizontal: 66.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillGray200.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder13,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 1.h,
              top: 3.v,
              bottom: 5.v,
            ),
            child: Text(
              userStatus,
              style: CustomTextStyles.titleSmallBluegray40002.copyWith(
                color: appTheme.blueGray40002,
              ),
            ),
          ),
        ],
      ),
    );
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
