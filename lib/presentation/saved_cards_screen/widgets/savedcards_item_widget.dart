import '../models/savedcards_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/custom_checkbox.dart';

// ignore: must_be_immutable
class SavedcardsItemWidget extends StatelessWidget {
  SavedcardsItemWidget(this.savedcardsItemModelObj, {this.changeCheckBox});

  SavedcardsItemModel savedcardsItemModelObj;

  Function(bool)? changeCheckBox;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse360x601,
          height: getSize(
            60,
          ),
          width: getSize(
            60,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              30,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            bottom: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomCheckbox(
                    text: "lbl_hdfc_debit_card".tr,
                    value: savedcardsItemModelObj.isCheckbox,
                    margin: getMargin(
                      top: 2,
                    ),
                    fontStyle: CheckboxFontStyle.GilroyMedium16,
                    onChange: (value) {
                      changeCheckBox?.call(value);
                    },
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgOverflowmenu16x16,
                    height: getSize(
                      16,
                    ),
                    width: getSize(
                      16,
                    ),
                    margin: getMargin(
                      left: 100,
                      bottom: 7,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: getPadding(
                  top: 13,
                ),
                child: Text(
                  "lbl_5432".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium16Bluegray400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
