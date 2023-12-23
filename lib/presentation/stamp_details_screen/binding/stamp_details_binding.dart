import '../controller/stamp_details_controller.dart';
import 'package:get/get.dart';

/// A binding class for the StampDetailsScreen.
///
/// This class ensures that the StampDetailsController is created when the
/// StampDetailsScreen is first loaded.
class StampDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StampDetailsController());
  }
}
