import 'package:across_europe/presentation/userpage_bottomsheet_screen/userpage_bottomsheet_screen.dart';
import 'package:across_europe/presentation/userpage_bottomsheet_screen/binding/userpage_bottomsheet_binding.dart';
import 'package:across_europe/presentation/homepage_alt_container_screen/homepage_alt_container_screen.dart';
import 'package:across_europe/presentation/homepage_alt_container_screen/binding/homepage_alt_container_binding.dart';
import 'package:across_europe/presentation/splash_screen/splash_screen.dart';
import 'package:across_europe/presentation/splash_screen/binding/splash_binding.dart';
import 'package:across_europe/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:across_europe/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String userpagePage = '/userpage_page';

  static const String userpageBottomsheetScreen =
      '/userpage_bottomsheet_screen';

  static const String homepageAltPage = '/homepage_alt_page';

  static const String homepageAltContainerScreen =
      '/homepage_alt_container_screen';

  static const String splashScreen = '/splash_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: userpageBottomsheetScreen,
      page: () => UserpageBottomsheetScreen(),
      bindings: [
        UserpageBottomsheetBinding(),
      ],
    ),
    GetPage(
      name: homepageAltContainerScreen,
      page: () => HomepageAltContainerScreen(),
      bindings: [
        HomepageAltContainerBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
