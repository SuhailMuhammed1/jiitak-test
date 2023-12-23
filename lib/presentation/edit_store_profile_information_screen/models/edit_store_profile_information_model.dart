import '../../../core/app_export.dart';
import 'input_item_model.dart';
import 'frame_item_model.dart';
import 'foodphotoadlist_item_model.dart';
import 'frame1_item_model.dart';
import 'package:jiitak/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [edit_store_profile_information_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EditStoreProfileInformationModel {
  Rx<List<InputItemModel>> inputItemList = Rx([
    InputItemModel(
        photo: ImageConstant.img20211122.obs,
        closeIcon: ImageConstant.imgClose.obs),
    InputItemModel(photo: ImageConstant.imgOutlineImage1.obs)
  ]);

  Rx<List<FrameItemModel>> frameItemList =
      Rx(List.generate(3, (index) => FrameItemModel()));

  Rx<List<FoodphotoadlistItemModel>> foodphotoadlistItemList =
      Rx([FoodphotoadlistItemModel(input: ImageConstant.imgInput1.obs)]);

  Rx<List<Frame1ItemModel>> frame1ItemList = Rx([
    Frame1ItemModel(
        image: ImageConstant.img2021112196x91.obs,
        close: ImageConstant.imgCloseGray300.obs),
    Frame1ItemModel(
        image: ImageConstant.img2021112296x91.obs,
        close: ImageConstant.imgCloseGray300.obs),
    Frame1ItemModel(
        image: ImageConstant.img202111221.obs,
        close: ImageConstant.imgCloseGray3009x9.obs)
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);

  Rx<List<SelectionPopupModel>> dropdownItemList2 = Rx([
    SelectionPopupModel(
      id: 1,
      title: "Item One",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: 2,
      title: "Item Two",
    ),
    SelectionPopupModel(
      id: 3,
      title: "Item Three",
    )
  ]);
}
