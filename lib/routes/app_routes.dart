import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/homepage_screen/homepage_screen.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/homepage_drawer_screen/homepage_drawer_screen.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/homepage_drawer_screen/binding/homepage_drawer_binding.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:lee_raiyan_bin_zulkifli_s_application7/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homepageScreen = '/homepage_screen';

  static const String homepageDrawerScreen = '/homepage_drawer_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: homepageDrawerScreen,
      page: () => HomepageDrawerScreen(),
      bindings: [
        HomepageDrawerBinding(),
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
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    )
  ];
}
