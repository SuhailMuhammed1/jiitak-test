import '../controller/edit_store_profile_information_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditStoreProfileInformationScreen.
///
/// This class ensures that the EditStoreProfileInformationController is created when the
/// EditStoreProfileInformationScreen is first loaded.
class EditStoreProfileInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditStoreProfileInformationController());
  }
}
