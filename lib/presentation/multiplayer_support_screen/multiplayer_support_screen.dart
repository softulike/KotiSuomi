import 'bloc/multiplayer_support_bloc.dart';
import 'models/multiplayer_support_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_button.dart';

class MultiplayerSupportScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MultiplayerSupportBloc>(
        create: (context) => MultiplayerSupportBloc(MultiplayerSupportState(
            multiplayerSupportModelObj: MultiplayerSupportModel()))
          ..add(MultiplayerSupportInitialEvent()),
        child: MultiplayerSupportScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MultiplayerSupportBloc, MultiplayerSupportState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.blueA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(48),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 13, bottom: 11),
                      onTap: () {
                        onTapArrowleft(context);
                      }),
                  centerTitle: true,
                  title: Text("lbl_click_to_choose".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtGilroySemiBold24)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, top: 37, right: 16, bottom: 37),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_select_a_mode".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroyMedium18),
                        Padding(
                            padding: getPadding(top: 19),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(top: 4, bottom: 4),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCursor,
                                                height: getSize(60),
                                                width: getSize(60)),
                                            Padding(
                                                padding: getPadding(top: 10),
                                                child: Text("lbl_score".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroySemiBold16))
                                          ])),
                                  Container(
                                      width: getHorizontalSize(60),
                                      margin: getMargin(left: 86),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgAlarm,
                                                height: getVerticalSize(68),
                                                width: getHorizontalSize(60)),
                                            Padding(
                                                padding: getPadding(
                                                    left: 10, top: 10),
                                                child: Text("lbl_time".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtGilroySemiBold16))
                                          ]))
                                ])),
                        Padding(
                            padding: getPadding(top: 33),
                            child: Text("msg_select_a_character".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium18)),
                        Padding(
                            padding: getPadding(left: 31, top: 27, right: 21),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgKindpng319611198x45,
                                      height: getVerticalSize(98),
                                      width: getHorizontalSize(45),
                                      margin: getMargin(top: 30, bottom: 29)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgKindpng9839541,
                                      height: getVerticalSize(158),
                                      width: getHorizontalSize(64)),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgPngfind284x53,
                                      height: getVerticalSize(84),
                                      width: getHorizontalSize(53),
                                      margin: getMargin(top: 43, bottom: 29))
                                ])),
                        CustomButton(
                            height: getVerticalSize(50),
                            width: getHorizontalSize(144),
                            text: "lbl_select".tr,
                            margin: getMargin(top: 23),
                            variant: ButtonVariant.FillWhiteA700,
                            fontStyle: ButtonFontStyle.GilroyMedium16BlueA700),
                        Padding(
                            padding: getPadding(top: 55),
                            child: Text("msg_select_player_mode".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: CustomButton(
                                          height: getVerticalSize(58),
                                          text: "lbl_single_player".tr,
                                          margin: getMargin(right: 12),
                                          variant:
                                              ButtonVariant.OutlineGray7000f,
                                          fontStyle:
                                              ButtonFontStyle.GilroyBold20)),
                                  Expanded(
                                      child: CustomButton(
                                          height: getVerticalSize(58),
                                          text: "lbl_multi_players".tr,
                                          margin: getMargin(left: 12),
                                          variant:
                                              ButtonVariant.OutlineGray7000f,
                                          fontStyle:
                                              ButtonFontStyle.GilroyBold20))
                                ])),
                        Container(
                            height: getVerticalSize(53),
                            width: getHorizontalSize(396),
                            margin: getMargin(top: 50, bottom: 5),
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          decoration: AppDecoration
                                              .outlineWhiteA700
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder22),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                    width: double.maxFinite,
                                                    child: Container(
                                                        width:
                                                            getHorizontalSize(
                                                                396),
                                                        margin: getMargin(
                                                            bottom: 5),
                                                        decoration: AppDecoration
                                                            .fillLightgreenA400
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder22),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgSubtract,
                                                                  height:
                                                                      getVerticalSize(
                                                                          43),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          267))
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          decoration: AppDecoration
                                              .txtOutlineBlack90026,
                                          child: Text("lbl_play".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAdamGorryInline24
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.96)))))
                                ]))
                      ]))));
    });
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }
}
