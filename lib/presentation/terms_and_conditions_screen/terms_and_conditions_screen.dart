import 'bloc/terms_and_conditions_bloc.dart';
import 'models/terms_and_conditions_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<TermsAndConditionsBloc>(
        create: (context) => TermsAndConditionsBloc(TermsAndConditionsState(
            termsAndConditionsModelObj: TermsAndConditionsModel()))
          ..add(TermsAndConditionsInitialEvent()),
        child: TermsAndConditionsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TermsAndConditionsBloc, TermsAndConditionsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray5001,
              appBar: CustomAppBar(
                  height: getVerticalSize(51),
                  leadingWidth: 40,
                  leading: AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 14, bottom: 13),
                      onTap: () {
                        onTapArrowleft12(context);
                      }),
                  centerTitle: true,
                  title: AppbarTitle(text: "msg_terms_and_conditions".tr)),
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("lbl_lorem_ipsum".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtGilroySemiBold18Black900
                                .copyWith(
                                    decoration: TextDecoration.underline)),
                        Container(
                            width: getHorizontalSize(394),
                            margin: getMargin(top: 12),
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray400)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_lorem_ipsum".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18Black900
                                    .copyWith(
                                        decoration: TextDecoration.underline))),
                        Container(
                            width: getHorizontalSize(394),
                            margin: getMargin(top: 12),
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray400)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_lorem_ipsum".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18Black900
                                    .copyWith(
                                        decoration: TextDecoration.underline))),
                        Container(
                            width: getHorizontalSize(394),
                            margin: getMargin(top: 12),
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray400)),
                        Padding(
                            padding: getPadding(top: 16),
                            child: Divider(
                                height: getVerticalSize(1),
                                thickness: getVerticalSize(1),
                                color: ColorConstant.blueGray100)),
                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("lbl_lorem_ipsum".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroySemiBold18Black900
                                    .copyWith(
                                        decoration: TextDecoration.underline))),
                        Container(
                            width: getHorizontalSize(394),
                            margin: getMargin(top: 12, bottom: 5),
                            child: Text("msg_lorem_ipsum_dolor".tr,
                                maxLines: null,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtGilroyMedium16Bluegray400))
                      ]))));
    });
  }

  onTapArrowleft12(BuildContext context) {
    NavigatorService.goBack();
  }
}
