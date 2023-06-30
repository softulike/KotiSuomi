import 'bloc/guest_login_bloc.dart';
import 'models/guest_login_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/core/utils/validation_functions.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_button.dart';
import 'package:ral_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class GuestLoginScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<GuestLoginBloc>(
        create: (context) => GuestLoginBloc(
            GuestLoginState(guestLoginModelObj: GuestLoginModel()))
          ..add(GuestLoginInitialEvent()),
        child: GuestLoginScreen());
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
                      onTapArrowleft1(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_login_as_a_guest".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 23, right: 16, bottom: 23),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_email".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtGilroyMedium16),
                          BlocSelector<GuestLoginBloc, GuestLoginState,
                                  TextEditingController?>(
                              selector: (state) => state.inputFieldController,
                              builder: (context, inputFieldController) {
                                return CustomTextFormField(
                                    focusNode: FocusNode(),
                                    controller: inputFieldController,
                                    hintText: "msg_enter_your_email".tr,
                                    margin: getMargin(top: 7),
                                    textInputType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    });
                              }),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Text("lbl_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtGilroyMedium16)),
                          BlocBuilder<GuestLoginBloc, GuestLoginState>(
                              builder: (context, state) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: state.inputFieldOneController,
                                hintText: "lbl_enter_password".tr,
                                margin: getMargin(top: 6),
                                padding: TextFormFieldPadding.PaddingT12,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                suffix: InkWell(
                                    onTap: () {
                                      context.read<GuestLoginBloc>().add(
                                          ChangePasswordVisibilityEvent(
                                              value: !state.isShowPassword));
                                    },
                                    child: Container(
                                        margin: getMargin(all: 12),
                                        child: CustomImageView(
                                            svgPath: state.isShowPassword
                                                ? ImageConstant.imgEye
                                                : ImageConstant.imgEye))),
                                suffixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(44)),
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "Please enter valid password";
                                  }
                                  return null;
                                },
                                isObscureText: state.isShowPassword);
                          }),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                  padding: getPadding(top: 20, right: 6),
                                  child: Text("msg_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtGilroyMedium14))),
                          CustomButton(
                              height: getVerticalSize(50),
                              width: getHorizontalSize(396),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 25, bottom: 5))
                        ])))));
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
