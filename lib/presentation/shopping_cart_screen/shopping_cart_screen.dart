import 'bloc/shopping_cart_bloc.dart';
import 'models/shopping_cart_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_button.dart';

class ShoppingCartScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ShoppingCartBloc>(
        create: (context) => ShoppingCartBloc(
            ShoppingCartState(shoppingCartModelObj: ShoppingCartModel()))
          ..add(ShoppingCartInitialEvent()),
        child: ShoppingCartScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingCartBloc, ShoppingCartState>(
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
                        onTapArrowleft7(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_shopping_bag".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, top: 20, right: 16, bottom: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            height: getVerticalSize(52),
                            width: getHorizontalSize(396),
                            child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: getPadding(
                                              left: 82,
                                              top: 14,
                                              right: 82,
                                              bottom: 14),
                                          decoration:
                                              AppDecoration.outlineBluegray100,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding:
                                                        getPadding(bottom: 1),
                                                    child: Text(
                                                        "lbl_wishlist".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyMedium16Bluegray400))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                          padding: getPadding(left: 72),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text("lbl_bag".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroyMedium16BlueA700),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: SizedBox(
                                                        width:
                                                            getHorizontalSize(
                                                                51),
                                                        child: Divider(
                                                            height:
                                                                getVerticalSize(
                                                                    2),
                                                            thickness:
                                                                getVerticalSize(
                                                                    2),
                                                            color: ColorConstant
                                                                .blueA700)))
                                              ])))
                                ])),
                        Padding(
                            padding: getPadding(top: 27),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("msg_tomorrow_7_am".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium20),
                                  CustomImageView(
                                      svgPath:
                                          ImageConstant.imgArrowdownBlueGray400,
                                      height: getSize(16),
                                      width: getSize(16),
                                      margin: getMargin(
                                          left: 12, top: 2, bottom: 5))
                                ])),
                        Container(
                            margin: getMargin(top: 27),
                            padding: getPadding(
                                left: 19, top: 11, right: 19, bottom: 11),
                            decoration: AppDecoration.outlineGray70011.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: getMargin(top: 3, bottom: 6),
                                      color: ColorConstant.gray5002,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                      child: Container(
                                          height: getSize(89),
                                          width: getSize(89),
                                          padding: getPadding(
                                              left: 16,
                                              top: 25,
                                              right: 16,
                                              bottom: 25),
                                          decoration: AppDecoration.fillGray5002
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                          child: Stack(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage38x57,
                                                height: getVerticalSize(38),
                                                width: getHorizontalSize(57),
                                                alignment: Alignment.center)
                                          ]))),
                                  Container(
                                      width: getHorizontalSize(109),
                                      margin: getMargin(
                                          left: 18, top: 5, bottom: 13),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text("lbl_shimla_apple".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroyMedium18Bluegray400),
                                            Padding(
                                                padding: getPadding(top: 9),
                                                child: Text("lbl_1_kg".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroySemiBold14Bluegray200)),
                                            Padding(
                                                padding: getPadding(top: 8),
                                                child: Row(children: [
                                                  Text("lbl_22".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtGilroySemiBold18BlueA700),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 17),
                                                      child: Text("lbl_3_25".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtGilroyRegular18))
                                                ]))
                                          ])),
                                  Container(
                                      width: getHorizontalSize(101),
                                      margin: getMargin(
                                          left: 40, right: 1, bottom: 7),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgClose,
                                                height: getSize(12),
                                                width: getSize(12)),
                                            Padding(
                                                padding: getPadding(
                                                    top: 49, right: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgGoogle,
                                                          height: getSize(30),
                                                          width: getSize(30),
                                                          onTap: () {
                                                            onTapImgGoogle(
                                                                context);
                                                          }),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 15),
                                                          child: Text(
                                                              "lbl_1".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyMedium24)),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFacebook,
                                                          height: getSize(30),
                                                          width: getSize(30),
                                                          margin: getMargin(
                                                              left: 16),
                                                          onTap: () {
                                                            onTapImgFacebook(
                                                                context);
                                                          })
                                                    ]))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(top: 31),
                            child: Text("lbl_payment_details".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold24Gray800)),
                        Container(
                            height: getVerticalSize(292),
                            width: getHorizontalSize(396),
                            margin: getMargin(top: 22),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          padding: getPadding(
                                              left: 21,
                                              top: 14,
                                              right: 21,
                                              bottom: 14),
                                          decoration: AppDecoration
                                              .outlineBlack9000c
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder8),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 3, right: 3),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "lbl_total_mrp"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyRegular16Bluegray70001),
                                                          Text("lbl_9_97".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyRegular16Bluegray70001)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .blueGray100)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 3,
                                                        top: 13,
                                                        right: 3),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 2),
                                                              child: Text(
                                                                  "lbl_store_credits"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroyRegular16Bluegray70001)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          2),
                                                              child: Text(
                                                                  "lbl_3_97".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroyRegular16Bluegray70001))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .blueGray100)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 3,
                                                        top: 13,
                                                        right: 3),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "lbl_sub_total"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyRegular16Bluegray70001),
                                                          Text("lbl_6_00".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyRegular16Bluegray70001)
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .blueGray100)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 3,
                                                        top: 13,
                                                        right: 3),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 1),
                                                              child: Text(
                                                                  "msg_shipping_charges"
                                                                      .tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroyRegular16Bluegray70001)),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          1),
                                                              child: Text(
                                                                  "lbl_1_10".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: AppStyle
                                                                      .txtGilroyRegular16Bluegray70001))
                                                        ])),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 14),
                                                    child: Divider(
                                                        height:
                                                            getVerticalSize(1),
                                                        thickness:
                                                            getVerticalSize(1),
                                                        color: ColorConstant
                                                            .blueGray100)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 3,
                                                        top: 13,
                                                        right: 3,
                                                        bottom: 11),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                              "lbl_estimated_gst"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyRegular16Bluegray70001),
                                                          Text("lbl_free".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtGilroyRegular16Bluegray70001)
                                                        ]))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          margin: getMargin(top: 252),
                                          padding: getPadding(
                                              left: 24,
                                              top: 8,
                                              right: 24,
                                              bottom: 8),
                                          decoration: AppDecoration.fillBlue50
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderBL10),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 1, top: 1),
                                                    child: Text(
                                                        "lbl_grand_total".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroySemiBold18Bluegray900)),
                                                Padding(
                                                    padding: getPadding(top: 1),
                                                    child: Text("lbl_7_10".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtGilroyBold18))
                                              ])))
                                ])),
                        CustomButton(
                            height: getVerticalSize(50),
                            text: "lbl_place_order".tr,
                            margin: getMargin(top: 30, bottom: 5))
                      ]))));
    });
  }

  onTapImgGoogle(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapImgFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }
}
