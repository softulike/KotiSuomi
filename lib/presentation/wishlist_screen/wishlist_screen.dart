import 'bloc/wishlist_bloc.dart';
import 'models/wishlist_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_button.dart';

class WishlistScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistBloc>(
        create: (context) =>
            WishlistBloc(WishlistState(wishlistModelObj: WishlistModel()))
              ..add(WishlistInitialEvent()),
        child: WishlistScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray5001,
              appBar: CustomAppBar(
                  height: getVerticalSize(48),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 12, bottom: 12),
                      onTap: () {
                        onTapArrowleft9(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_wishlist".tr)),
              body: Container(
                  height: getVerticalSize(830),
                  width: double.maxFinite,
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle1377,
                        height: getVerticalSize(805),
                        width: getHorizontalSize(428),
                        alignment: Alignment.center),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            margin: getMargin(left: 16, right: 16, bottom: 68),
                            padding: getPadding(
                                left: 16, top: 24, right: 16, bottom: 24),
                            decoration: AppDecoration.fillGray5001.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_roadster".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroySemiBold18Bluegray900)),
                                  Container(
                                      width: getHorizontalSize(323),
                                      margin: getMargin(top: 13, right: 40),
                                      child: Text("msg_women_navy_blue".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtGilroyMedium16Bluegray400)),
                                  Padding(
                                      padding: getPadding(top: 25),
                                      child: Row(children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 3),
                                            child: Text("lbl_80".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroyRegular18
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .lineThrough))),
                                        Padding(
                                            padding: getPadding(left: 16),
                                            child: Text("lbl_70".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroySemiBold24OrangeA700)),
                                        Padding(
                                            padding: getPadding(
                                                left: 16, top: 2, bottom: 2),
                                            child: Text("lbl_20_off".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtGilroySemiBold20BlueA700))
                                      ])),
                                  Padding(
                                      padding: getPadding(top: 15),
                                      child: Text("msg_inclusive_of_all".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtGilroyRegular12)),
                                  Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                          padding: getPadding(
                                              left: 14, top: 27, right: 14),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                    child: CustomButton(
                                                        height:
                                                            getVerticalSize(50),
                                                        text:
                                                            "msg_added_to_wishlist"
                                                                .tr,
                                                        margin: getMargin(
                                                            right: 12),
                                                        variant: ButtonVariant
                                                            .OutlineBlueA700,
                                                        fontStyle: ButtonFontStyle
                                                            .GilroyMedium16BlueA700)),
                                                Expanded(
                                                    child: CustomButton(
                                                        height:
                                                            getVerticalSize(50),
                                                        text:
                                                            "lbl_add_to_bag".tr,
                                                        margin: getMargin(
                                                            left: 12)))
                                              ])))
                                ])))
                  ]))));
    });
  }

  onTapArrowleft9(BuildContext context) {
    NavigatorService.goBack();
  }
}
