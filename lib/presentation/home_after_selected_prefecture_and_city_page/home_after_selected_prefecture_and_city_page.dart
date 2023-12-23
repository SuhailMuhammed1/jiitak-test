// ignore_for_file: must_be_immutable

import '../home_after_selected_prefecture_and_city_page/widgets/userprofile_item_widget.dart';
import 'controller/home_after_selected_prefecture_and_city_controller.dart';
import 'models/home_after_selected_prefecture_and_city_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/widgets/app_bar/appbar_title_searchview.dart';
import 'package:jiitak/widgets/app_bar/appbar_trailing_image.dart';
import 'package:jiitak/widgets/app_bar/custom_app_bar.dart';
import 'package:jiitak/widgets/custom_elevated_button.dart';
import 'package:jiitak/widgets/custom_floating_button.dart';
import 'package:table_calendar/table_calendar.dart';

class HomeAfterSelectedPrefectureAndCityPage extends StatelessWidget {
  HomeAfterSelectedPrefectureAndCityPage({Key? key})
      : super(
    key: key,
  );

  HomeAfterSelectedPrefectureAndCityController controller = Get.put(
      HomeAfterSelectedPrefectureAndCityController(
          HomeAfterSelectedPrefectureAndCityModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    bool isKeyboardVisible = MediaQuery.of(context).viewInsets.bottom > 0;

    return GestureDetector(
      onTap: () {
        // Close the keyboard when the user taps outside of any text input
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          backgroundColor: appTheme.gray50,
          appBar: _buildAppBar(),
          body: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildButton(),
                SizedBox(height: 24.v),
                _buildCalendar(),
                SizedBox(height: 24.v),
                _buildUserProfile(),
              ],
            ),
          ),
          floatingActionButton: isKeyboardVisible ? null : _buildFloatingActionButton(),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 24.h),
        hintText: "lbl".tr,
        controller: controller.searchController,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFilterIcon,
          margin: EdgeInsets.only(
            left: 13.h,
            top: 9.v,
            right: 12.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFavorite,
          margin: EdgeInsets.fromLTRB(10.h, 12.v, 39.h, 3.v),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildButton() {
    return CustomElevatedButton(
      text: "lbl_2022_5_26".tr,
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientYellowToPrimaryDecoration,
    );
  }

  /// Section Widget
  Widget _buildCalendar() {
    return Align(
      alignment: Alignment.centerRight,
      child: Obx(
            () =>
            SizedBox(
              height: 67.v,
              width: 384.h,
              child: TableCalendar(
                locale: 'en_US',
                firstDay: DateTime(DateTime
                    .now()
                    .year - 5),
                lastDay: DateTime(DateTime
                    .now()
                    .year + 5),
                calendarFormat: CalendarFormat.week,
                // Use week format
                rangeSelectionMode: controller.rangeSelectionMode.value,
                startingDayOfWeek: StartingDayOfWeek.sunday,
                headerStyle: HeaderStyle(
                  formatButtonVisible: false,
                  titleCentered: true,
                ),
                calendarStyle: CalendarStyle(
                  outsideDaysVisible: false,
                  isTodayHighlighted: true,
                ),
                daysOfWeekStyle: DaysOfWeekStyle(),
                headerVisible: false,
                focusedDay: controller.focusedDay.value,
                rangeStartDay: controller.rangeStart,
                rangeEndDay: controller.rangeEnd,
                onDaySelected: (selectedDay, focusedDay) {
                  if (!isSameDay(controller.selectedDay, selectedDay)) {
                    controller.focusedDay.value = focusedDay;
                    controller.selectedDay = selectedDay;
                    controller.rangeSelectionMode.value =
                        RangeSelectionMode.toggledOn;
                  }
                },
                onRangeSelected: (start, end, focusedDay) {
                  controller.focusedDay.value = focusedDay;
                  controller.rangeEnd = end;
                  controller.rangeStart = start;
                  controller.rangeSelectionMode.value =
                      RangeSelectionMode.toggledOn;
                },
                onPageChanged: (focusedDay) {
                  controller.focusedDay.value = focusedDay;
                },
              ),
            ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 20.h,
          right: 17.h,
        ),
        child: Obx(
              () =>
              ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context,
                    index,) {
                  return SizedBox(
                    height: 16.v,
                  );
                },
                itemCount: controller.homeAfterSelectedPrefectureAndCityModelObj
                    .value.userprofileItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model = controller
                      .homeAfterSelectedPrefectureAndCityModelObj
                      .value
                      .userprofileItemList
                      .value[index];
                  return UserprofileItemWidget(
                    model,
                  );
                },
              ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return Visibility(
      maintainState: true,
      // Maintain state when not visible
      maintainAnimation: true,
      maintainSize: true,
      visible: !(controller.isKeyboardVisible.value),
      // Use .value to get bool
      child: CustomFloatingButton(
        height: 50,
        width: 50,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        decoration: FloatingButtonStyleHelper.fillOnPrimaryContainer,
        child: CustomImageView(
          imagePath: ImageConstant.imgLocationAndMap,
          height: 25.0.v,
          width: 25.0.h,
        ),
      ),
    );
  }
}