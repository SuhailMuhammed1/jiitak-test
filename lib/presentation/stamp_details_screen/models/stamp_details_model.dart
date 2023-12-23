import '../../../core/app_export.dart';
import 'slider_item_model.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [stamp_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StampDetailsModel {
  Rx<List<SliderItemModel>> sliderItemList =
      Rx([SliderItemModel(image: ImageConstant.imgRectangle31.obs)]);

  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        dateText: "2021 / 11 / 18".obs,
        stampText: "スタンプを獲得しました。".obs,
        countText: "1 個".obs),
    UserprofilelistItemModel(countText: "スタンプを獲得しました。".obs)
  ]);
}
