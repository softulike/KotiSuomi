import '../saved_cards_screen/widgets/savedcards_item_widget.dart';
import 'bloc/saved_cards_bloc.dart';
import 'models/saved_cards_model.dart';
import 'models/savedcards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_icon_button.dart';

class SavedCardsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SavedCardsBloc>(
        create: (context) => SavedCardsBloc(
            SavedCardsState(savedCardsModelObj: SavedCardsModel()))
          ..add(SavedCardsInitialEvent()),
        child: SavedCardsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray5001,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 13),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_saved_cards".tr)),
            body: Container(
                width: getHorizontalSize(396),
                margin: getMargin(left: 16, top: 24, right: 16, bottom: 5),
                padding: getPadding(all: 24),
                decoration: AppDecoration.outlineBlue50
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      BlocSelector<SavedCardsBloc, SavedCardsState,
                              SavedCardsModel?>(
                          selector: (state) => state.savedCardsModelObj,
                          builder: (context, savedCardsModelObj) {
                            return ListView.separated(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                separatorBuilder: (context, index) {
                                  return Padding(
                                      padding:
                                          getPadding(top: 24.5, bottom: 24.5),
                                      child: SizedBox(
                                          width: getHorizontalSize(348),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.blue50)));
                                },
                                itemCount: savedCardsModelObj
                                        ?.savedcardsItemList.length ??
                                    0,
                                itemBuilder: (context, index) {
                                  SavedcardsItemModel model = savedCardsModelObj
                                          ?.savedcardsItemList[index] ??
                                      SavedcardsItemModel();
                                  return SavedcardsItemWidget(model,
                                      changeCheckBox: (value) {
                                    context.read<SavedCardsBloc>().add(
                                        SavedcardsItemEvent(
                                            index: index, isCheckbox: value));
                                  });
                                });
                          }),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blue50)),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(children: [
                            CustomIconButton(
                                height: 60,
                                width: 60,
                                variant: IconButtonVariant.OutlineBlue50,
                                shape: IconButtonShape.CircleBorder30,
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgSearch)),
                            Padding(
                                padding:
                                    getPadding(left: 24, top: 19, bottom: 21),
                                child: Text("lbl_add_new_card".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16))
                          ]))
                    ]))));
  }

  onTapArrowleft4(BuildContext context) {
    NavigatorService.goBack();
  }
}
