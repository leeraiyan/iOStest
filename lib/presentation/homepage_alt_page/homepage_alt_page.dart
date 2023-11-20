import '../homepage_alt_page/widgets/buttonbar2_item_widget.dart';
import 'controller/homepage_alt_controller.dart';
import 'models/buttonbar2_item_model.dart';
import 'models/homepage_alt_model.dart';
import 'package:across_europe/core/app_export.dart';
import 'package:across_europe/widgets/app_bar/appbar_leading_image.dart';
import 'package:across_europe/widgets/app_bar/appbar_title.dart';
import 'package:across_europe/widgets/app_bar/appbar_title_image.dart';
import 'package:across_europe/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:across_europe/widgets/custom_bottom_bar.dart';

class HomepageAltPage extends StatelessWidget {
  HomepageAltPage({Key? key})
      : super(
          key: key,
        );

  HomepageAltController controller =
      Get.put(HomepageAltController(HomepageAltModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        // appBar: _buildAppBar(),
         appBar: AppBar(
            backgroundColor: Color(0xFFE4DEEC), // Set your desired color here
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    "Join Now | Sign In",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Roboto',
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold, // Set the font weight to bold
                    ),
                  ),

                ),
                AppbarTitleImage(
                    imagePath: ImageConstant.imgMail,
                ),
              ],
            ),
            elevation: 0.0, // Set elevation to 0.0 to remove the shadow
            automaticallyImplyLeading: false, // Remove the default back button
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black, // Set the color of the hamburger icon to black
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer(); // Open the drawer
                  },
                );
              },
            ),
          ),

      drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                title: Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // Close the drawer
                    },
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Devices and Accessories'),
                      onTap: () {
                        // Handle Devices and Accessories tap
                      },
                    ),
                    ListTile(
                      title: Text('Physical Fitness Assessment'),
                      onTap: () {
                        // Handle Physical Fitness Assessment tap
                      },
                    ),
                    ListTile(
                      title: Text('Language Proficiency Test'),
                      onTap: () {
                        // Handle Language Proficiency Test tap
                      },
                    ),
                    ListTile(
                      title: Text('Travel Abroad Advice'),
                      onTap: () {
                        // Handle Travel Abroad Advice tap
                      },
                    ),
                    ListTile(
                      title: Text('HANOU ID'),
                      onTap: () {
                        // Handle HANOU ID tap
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0), // Adjust the height as needed
              ListTile(
                title: Text('Help             Settings'),
                onTap: () {
                  // Handle Help and Settings tap
                },
              ),
            ],
          ),
        ),




        body: Stack(
          children: [
        SingleChildScrollView(
          child: Column(
            children: [
              _buildSearchBarHome(),
              SizedBox(height: 27.v),
              _buildFortyThree(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.gradientGrayToGray,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildButtonBar(),
                    SizedBox(height: 18.v),
                    Padding(
                      padding: EdgeInsets.only(left: 11.h),
                      child: Text(
                        "lbl_add_friends_now".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 4.v),
                    Container(
                      width: 354.h,
                      margin: EdgeInsets.only(
                        left: 11.h,
                        right: 24.h,
                      ),
                      child: Text(
                        "msg_be_our_campus_ambassador".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                    SizedBox(height: 33.v),
                    _buildButtonNavigateTo(),
                    SizedBox(height: 7.v),
                  ],
                ),
              ),
            ],
          ),
        )]),

        // bottomNavigationBar: Padding(
        //   padding: EdgeInsets.only(left: 0.h),
        //   child: _buildBottomBar(),
        // ),
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
        padding: EdgeInsets.only(left: 3.h),
        child: Row(
          children: [
            AppbarTitle(
              text: "msg_join_now_sign".tr,
              margin: EdgeInsets.symmetric(vertical: 7.v),
            ),
            Container(
              height: 16.v,
              width: 242.h,
              margin: EdgeInsets.only(
                left: 3.h,
                top: 7.v,
                bottom: 7.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray300,
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgMail,
            ),
          ],
        ),
      ),
      styleType: Style.bgFill,
    );
  }

/// Section Widget
Widget _buildSearchBarHome() {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      width: 366.h,
      margin: EdgeInsets.only(right: 64.h),
      padding: EdgeInsets.symmetric(
        horizontal: 0.h,
        vertical: 0.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgSearchbarHome,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgSearchComponentHome,
        height: 69.v,
        width: 430.h,
      ),
    ),
  );
}


  /// Section Widget
  Widget _buildFortyThree() {
    return SizedBox(
      height: 223.v,
      width: 411.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGirlarmsup1,
            height: 199.v,
            width: 212.h,
            alignment: Alignment.bottomLeft,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 21.h),
              child: Text(
                "lbl_daily_quote".tr,
                style: theme.textTheme.headlineMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 212.h,
              margin: EdgeInsets.only(top: 63.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_per_aspera_ad_astra".tr,
                      style: CustomTextStyles.titleLargeBlack90023_1,
                    ),
                    TextSpan(
                      text: "msg_through_adversity".tr,
                      style: CustomTextStyles.titleLargeBlack900Bold23,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonBar() {
    return SizedBox(
      height: 179.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.only(left: 1.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 10.h,
            );
          },
          itemCount: controller
              .homepageAltModelObj.value.buttonbar2ItemList.value.length,
          itemBuilder: (context, index) {
            Buttonbar2ItemModel model = controller
                .homepageAltModelObj.value.buttonbar2ItemList.value[index];
            return Buttonbar2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildButtonNavigateTo() {
    return Container(
      width: 387.h,
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 11.v,
      ),
      decoration: AppDecoration.gradientWhiteAToDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "lbl_my_calendar".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 18.v),
          CustomImageView(
            imagePath: ImageConstant.imgFlight,
            height: 27.v,
            width: 29.h,
            alignment: Alignment.center,
          ),
          SizedBox(height: 6.v),
          SizedBox(
            height: 29.v,
            width: 93.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 27.v,
                    width: 93.h,
                    decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      borderRadius: BorderRadius.circular(
                        13.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 62.h,
                    margin: EdgeInsets.only(left: 12.h),
                    child: Text(
                      "lbl_none_scheduled".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.v),
        ],
      ),
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
}
