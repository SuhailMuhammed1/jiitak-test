import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/presentation/home_after_selected_prefecture_and_city_container_screen/home_after_selected_prefecture_and_city_container_screen.dart';
import 'package:jiitak/presentation/home_after_selected_prefecture_and_city_container_screen/binding/home_after_selected_prefecture_and_city_container_binding.dart';
import 'package:jiitak/presentation/initial/initial_page.dart';
import 'package:jiitak/presentation/stamp_details_screen/stamp_details_screen.dart';
import 'package:jiitak/presentation/stamp_details_screen/binding/stamp_details_binding.dart';
import 'package:jiitak/presentation/edit_store_profile_information_screen/edit_store_profile_information_screen.dart';
import 'package:jiitak/presentation/edit_store_profile_information_screen/binding/edit_store_profile_information_binding.dart';
import 'package:jiitak/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:jiitak/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

import '../presentation/initial/binding/initial_binding.dart';

class AppRoutes {
  static const String homeAfterSelectedPrefectureAndCityPage =
      '/home_after_selected_prefecture_and_city_page';

  static const String homeAfterSelectedPrefectureAndCityContainerScreen =
      '/home_after_selected_prefecture_and_city_container_screen';

  static const String stampDetailsScreen = '/stamp_details_screen';

  static const String editStoreProfileInformationScreen =
      '/edit_store_profile_information_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialpage = '/initial_page';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: homeAfterSelectedPrefectureAndCityContainerScreen,
      page: () => HomeAfterSelectedPrefectureAndCityContainerScreen(),
      bindings: [
        HomeAfterSelectedPrefectureAndCityContainerBinding(),
      ],
    ),
    GetPage(
      name: stampDetailsScreen,
      page: () => StampDetailsScreen(),
      bindings: [
        StampDetailsBinding(),
      ],
    ),
    GetPage(
      name: editStoreProfileInformationScreen,
      page: () => EditStoreProfileInformationScreen(),
      bindings: [
        EditStoreProfileInformationBinding(),
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
      page: () => Initial(),
      bindings: [
        InitialBinding(),
      ],
    ),
    GetPage(
      name: initialpage,
      page: () => Initial(),
      bindings: [
        InitialBinding(),
      ],
    ),
  ];
}
