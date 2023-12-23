import 'package:jiitak/presentation/initial/controller/initial_controller.dart';
import '../../../core/app_export.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InitialController());
  }
}