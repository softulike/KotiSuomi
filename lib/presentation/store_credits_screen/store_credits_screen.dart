import 'bloc/store_credits_bloc.dart';
import 'models/store_credits_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';

class StoreCreditsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<StoreCreditsBloc>(
        create: (context) => StoreCreditsBloc(
            StoreCreditsState(storeCreditsModelObj: StoreCreditsModel()))
          ..add(StoreCreditsInitialEvent()),
        child: StoreCreditsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StoreCreditsBloc, StoreCreditsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray5001,
              appBar: CustomAppBar(
                  height: getVerticalSize(53),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 12, bottom: 17),
                      onTap: () {
                        onTapArrowleft8(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_shopping_bag".tr)),
              body: Container(
                  width: getHorizontalSize(396),
                  margin: getMargin(left: 16, top: 20, right: 16, bottom: 5),
                  decoration: AppDecoration.outlineBlack9000c
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                            padding: getPadding(left: 24, top: 14, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_total_mrp".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyRegular16Bluegray70001),
                                  Text("lbl_9_97".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyRegular16Bluegray70001)
                                ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(21),
                                endIndent: getHorizontalSize(21))),
                        Padding(
                            padding: getPadding(left: 24, top: 13, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text("lbl_store_credits".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyRegular16BlueA700)),
                                  Padding(
                                      padding: getPadding(bottom: 2),
                                      child: Text("lbl_3_97".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyRegular16BlueA700))
                                ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(21),
                                endIndent: getHorizontalSize(21))),
                        Padding(
                            padding: getPadding(left: 24, top: 13, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_sub_total".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyRegular16Bluegray70001),
                                  Text("lbl_6_00".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyRegular16Bluegray70001)
                                ])),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(21),
                                endIndent: getHorizontalSize(21))),
                        Padding(
                            padding: getPadding(left: 24, top: 13, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("msg_shipping_charges".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyRegular16Bluegray70001)),
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("lbl_1_10".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyRegular16Bluegray70001))
                                ])),
                        Padding(
                            padding: getPadding(top: 14),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100,
                                indent: getHorizontalSize(21),
                                endIndent: getHorizontalSize(21))),
                        Padding(
                            padding: getPadding(left: 24, top: 13, right: 24),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("lbl_estimated_gst".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyRegular16Bluegray70001),
                                  Text("lbl_free".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtGilroyRegular16Bluegray70001)
                                ])),
                        Container(
                            margin: getMargin(top: 16),
                            padding: getPadding(
                                left: 24, top: 8, right: 24, bottom: 8),
                            decoration: AppDecoration.fillBlue50.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL10),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                      padding: getPadding(left: 1, top: 1),
                                      child: Text("lbl_grand_total".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroySemiBold18Bluegray900)),
                                  Padding(
                                      padding: getPadding(top: 1),
                                      child: Text("lbl_7_10".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyBold18))
                                ]))
                      ]))));
    });
  }

  onTapArrowleft8(BuildContext context) {
    NavigatorService.goBack();
  }
}
