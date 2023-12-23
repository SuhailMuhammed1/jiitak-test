import '../controller/home_after_selected_prefecture_and_city_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomeAfterSelectedPrefectureAndCityContainerScreen.
///
/// This class ensures that the HomeAfterSelectedPrefectureAndCityContainerController is created when the
/// HomeAfterSelectedPrefectureAndCityContainerScreen is first loaded.
class HomeAfterSelectedPrefectureAndCityContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeAfterSelectedPrefectureAndCityContainerController());
  }
}
