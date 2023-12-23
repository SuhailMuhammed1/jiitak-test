import 'controller/home_after_selected_prefecture_and_city_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/presentation/home_after_selected_prefecture_and_city_page/home_after_selected_prefecture_and_city_page.dart';
import 'package:jiitak/widgets/custom_bottom_app_bar.dart';
import 'package:jiitak/widgets/custom_floating_button.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class HomeAfterSelectedPrefectureAndCityContainerScreen
    extends GetWidget<HomeAfterSelectedPrefectureAndCityContainerController> {
  const HomeAfterSelectedPrefectureAndCityContainerScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    // Listen for keyboard visibility changes
    bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.homeAfterSelectedPrefectureAndCityPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(routeSetting.name!),
            transition: Transition.noTransition,
          ),
        ),
        bottomNavigationBar: _buildContent(),
        floatingActionButton: isKeyboardVisible ? null : _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildContent() {
    return CustomBottomAppBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return Container(
      child: CustomFloatingButton(
        height: 100.v,
        width: 100.h,
        child: CustomImageView(
          imagePath: ImageConstant.imgScanLine,
          // height: 25.0.v,
          // width: 25.0.h,
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.tf:
        return AppRoutes.homeAfterSelectedPrefectureAndCityPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeAfterSelectedPrefectureAndCityPage:
        return HomeAfterSelectedPrefectureAndCityPage();
      default:
        return DefaultWidget();
    }
  }
}
