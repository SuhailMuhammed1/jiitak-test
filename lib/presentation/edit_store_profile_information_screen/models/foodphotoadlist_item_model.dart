import '../../../core/app_export.dart';

/// This class is used in the [foodphotoadlist_item_widget] screen.
class FoodphotoadlistItemModel {
  FoodphotoadlistItemModel({
    this.input,
    this.id,
  }) {
    input = input ?? Rx(ImageConstant.imgInput1);
    id = id ?? Rx("");
    input = input ?? Rx(ImageConstant.img2021112291x91);
    id = id ?? Rx("");
    input = input ?? Rx(ImageConstant.img20211121);
    id = id ?? Rx("");
  }

  Rx<String>? input;

  Rx<String>? id;
}
