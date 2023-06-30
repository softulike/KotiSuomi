import 'bloc/shipping_charge_calculator_bloc.dart';
import 'models/shipping_charge_calculator_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_text_form_field.dart';

class ShippingChargeCalculatorScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ShippingChargeCalculatorBloc>(
        create: (context) => ShippingChargeCalculatorBloc(
            ShippingChargeCalculatorState(
                shippingChargeCalculatorModelObj:
                    ShippingChargeCalculatorModel()))
          ..add(ShippingChargeCalculatorInitialEvent()),
        child: ShippingChargeCalculatorScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray5001,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 17),
                    onTap: () {
                      onTapArrowleft6(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_shipping_charge".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1376194x396,
                          height: getVerticalSize(194),
                          width: getHorizontalSize(396),
                          radius: BorderRadius.circular(getHorizontalSize(6))),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Text("msg_pick_up_area_pin".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold16Bluegray900)),
                      BlocSelector<
                              ShippingChargeCalculatorBloc,
                              ShippingChargeCalculatorState,
                              TextEditingController?>(
                          selector: (state) => state.zipcodeController,
                          builder: (context, zipcodeController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: zipcodeController,
                                hintText: "lbl_333333".tr,
                                margin: getMargin(top: 13),
                                variant:
                                    TextFormFieldVariant.UnderLineBluegray100,
                                fontStyle: TextFormFieldFontStyle
                                    .GilroyMedium16Bluegray400);
                          }),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("msg_delivery_area_pin".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold16Bluegray900)),
                      BlocSelector<
                              ShippingChargeCalculatorBloc,
                              ShippingChargeCalculatorState,
                              TextEditingController?>(
                          selector: (state) => state.zipcodeOneController,
                          builder: (context, zipcodeOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: zipcodeOneController,
                                hintText: "lbl_333333".tr,
                                margin: getMargin(top: 13),
                                variant:
                                    TextFormFieldVariant.UnderLineBluegray100,
                                fontStyle: TextFormFieldFontStyle
                                    .GilroyMedium16Bluegray400);
                          }),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Text("lbl_weight".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold16Bluegray900)),
                      BlocSelector<
                              ShippingChargeCalculatorBloc,
                              ShippingChargeCalculatorState,
                              TextEditingController?>(
                          selector: (state) => state.weightOneController,
                          builder: (context, weightOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: weightOneController,
                                hintText: "lbl_0_5_kg".tr,
                                margin: getMargin(top: 14),
                                variant:
                                    TextFormFieldVariant.UnderLineBluegray100,
                                fontStyle: TextFormFieldFontStyle
                                    .GilroyMedium16Bluegray400);
                          }),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("msg_cash_on_delivery".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold16Bluegray900)),
                      BlocSelector<
                              ShippingChargeCalculatorBloc,
                              ShippingChargeCalculatorState,
                              TextEditingController?>(
                          selector: (state) => state.group1013Controller,
                          builder: (context, group1013Controller) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: group1013Controller,
                                hintText: "lbl_not_applicable".tr,
                                margin: getMargin(top: 14),
                                variant:
                                    TextFormFieldVariant.UnderLineBluegray100,
                                fontStyle: TextFormFieldFontStyle
                                    .GilroyMedium16Bluegray400,
                                textInputAction: TextInputAction.done);
                          }),
                      Container(
                          width: getHorizontalSize(369),
                          margin: getMargin(top: 25, right: 26),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text:
                                        "Delivery to zip code 333333 will be delivered within "
                                            .tr,
                                    style: TextStyle(
                                        color:
                                            ColorConstant.fromHex("#ff80b0ff"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: "2-3 days".tr,
                                    style: TextStyle(
                                        color:
                                            ColorConstant.fromHex("#ff0061ff"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w500)),
                                TextSpan(
                                    text: ".".tr,
                                    style: TextStyle(
                                        color:
                                            ColorConstant.fromHex("#ff80b0ff"),
                                        fontSize: getFontSize(16),
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w500))
                              ]),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("lbl_charge".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroySemiBold18Bluegray900)),
                      Padding(
                          padding: getPadding(top: 12, right: 83, bottom: 5),
                          child: Row(children: [
                            Text("lbl_199".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyBold32),
                            Padding(
                                padding:
                                    getPadding(left: 16, top: 10, bottom: 9),
                                child: Text("msg_includes_import".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtGilroyMedium16Bluegray400))
                          ]))
                    ]))));
  }

  onTapArrowleft6(BuildContext context) {
    NavigatorService.goBack();
  }
}
