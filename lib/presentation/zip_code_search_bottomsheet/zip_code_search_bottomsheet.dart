import 'bloc/zip_code_search_bloc.dart';
import 'models/zip_code_search_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/core/utils/validation_functions.dart';
import 'package:ral_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ZipCodeSearchBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ZipCodeSearchBloc>(
      create: (context) => ZipCodeSearchBloc(ZipCodeSearchState(
        zipCodeSearchModelObj: ZipCodeSearchModel(),
      ))
        ..add(ZipCodeSearchInitialEvent()),
      child: ZipCodeSearchBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 16,
            top: 43,
            right: 16,
            bottom: 43,
          ),
          decoration: AppDecoration.fillWhiteA700.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL10,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "msg_share_your_content".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtGilroySemiBold18Bluegray900,
              ),
              Container(
                width: getHorizontalSize(
                  324,
                ),
                margin: getMargin(
                  top: 16,
                  right: 71,
                ),
                child: Text(
                  "msg_pincode_change_might".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtGilroyMedium16Bluegray400,
                ),
              ),
              BlocSelector<ZipCodeSearchBloc, ZipCodeSearchState,
                  TextEditingController?>(
                selector: (state) => state.frame9820Controller,
                builder: (context, frame9820Controller) {
                  return CustomTextFormField(
                    focusNode: FocusNode(),
                    controller: frame9820Controller,
                    hintText: "lbl_enter_pincode".tr,
                    margin: getMargin(
                      top: 32,
                      right: 42,
                    ),
                    variant: TextFormFieldVariant.UnderLineBluegray100,
                    fontStyle: TextFormFieldFontStyle.GilroyRegular16,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.number,
                    validator: (value) {
                      if (!isNumeric(value)) {
                        return "Please enter valid number";
                      }
                      return null;
                    },
                  );
                },
              ),
              Padding(
                padding: getPadding(
                  top: 18,
                  bottom: 33,
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                      height: getSize(
                        16,
                      ),
                      width: getSize(
                        16,
                      ),
                      margin: getMargin(
                        bottom: 1,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 8,
                      ),
                      child: Text(
                        "msg_use_my_current_location".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtGilroyMedium14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
