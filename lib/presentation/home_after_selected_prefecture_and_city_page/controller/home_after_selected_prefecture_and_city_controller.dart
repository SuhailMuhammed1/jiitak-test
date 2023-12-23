import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/presentation/home_after_selected_prefecture_and_city_page/models/home_after_selected_prefecture_and_city_model.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

/// A controller class for the HomeAfterSelectedPrefectureAndCityPage.
///
/// This class manages the state of the HomeAfterSelectedPrefectureAndCityPage, including the
/// current homeAfterSelectedPrefectureAndCityModelObj
class HomeAfterSelectedPrefectureAndCityController extends GetxController {
  HomeAfterSelectedPrefectureAndCityController(
      this.homeAfterSelectedPrefectureAndCityModelObj);

  TextEditingController searchController = TextEditingController();

  RxBool isKeyboardVisible = false.obs;

  Rx<HomeAfterSelectedPrefectureAndCityModel>
      homeAfterSelectedPrefectureAndCityModelObj;

  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  Rx<DateTime> focusedDay = DateTime.now().obs;

  Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

  final FocusNode nonTextInputFocusNode = FocusNode();


  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Add a delay of 300 milliseconds before unfocusing to avoid issues
      Future.delayed(Duration(milliseconds: 800), () {
        FocusManager.instance.primaryFocus?.unfocus();
      });
    });
  }



}
