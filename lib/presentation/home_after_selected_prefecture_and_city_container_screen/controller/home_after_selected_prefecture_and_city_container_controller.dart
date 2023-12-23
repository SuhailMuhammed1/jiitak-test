import 'package:jiitak/core/app_export.dart';
import 'package:jiitak/presentation/home_after_selected_prefecture_and_city_container_screen/models/home_after_selected_prefecture_and_city_container_model.dart';

/// A controller class for the HomeAfterSelectedPrefectureAndCityContainerScreen.
///
/// This class manages the state of the HomeAfterSelectedPrefectureAndCityContainerScreen, including the
/// current homeAfterSelectedPrefectureAndCityContainerModelObj
class HomeAfterSelectedPrefectureAndCityContainerController
    extends GetxController {
  Rx<HomeAfterSelectedPrefectureAndCityContainerModel>
      homeAfterSelectedPrefectureAndCityContainerModelObj =
      HomeAfterSelectedPrefectureAndCityContainerModel().obs;
}
