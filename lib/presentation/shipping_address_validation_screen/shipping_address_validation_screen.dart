import 'bloc/shipping_address_validation_bloc.dart';
import 'models/shipping_address_validation_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/core/utils/validation_functions.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_button.dart';
import 'package:ral_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ShippingAddressValidationScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ShippingAddressValidationBloc>(
        create: (context) => ShippingAddressValidationBloc(
            ShippingAddressValidationState(
                shippingAddressValidationModelObj:
                    ShippingAddressValidationModel()))
          ..add(ShippingAddressValidationInitialEvent()),
        child: ShippingAddressValidationScreen());
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
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "msg_shipping_address".tr)),
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding:
                        getPadding(left: 16, top: 23, right: 16, bottom: 23),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_name".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtGilroyMedium16),
                                BlocSelector<
                                        ShippingAddressValidationBloc,
                                        ShippingAddressValidationState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.inputFieldController,
                                    builder: (context, inputFieldController) {
                                      return CustomTextFormField(
                                          focusNode: FocusNode(),
                                          controller: inputFieldController,
                                          hintText: "lbl_enter_your_name".tr,
                                          margin: getMargin(top: 6),
                                          validator: (value) {
                                            if (!isText(value)) {
                                              return "Please enter valid text";
                                            }
                                            return null;
                                          });
                                    })
                              ]),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("msg_username_email".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    BlocSelector<
                                            ShippingAddressValidationBloc,
                                            ShippingAddressValidationState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.inputFieldOneController,
                                        builder:
                                            (context, inputFieldOneController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  inputFieldOneController,
                                              hintText:
                                                  "msg_enter_your_email2".tr,
                                              margin: getMargin(top: 7),
                                              textInputType:
                                                  TextInputType.emailAddress,
                                              validator: (value) {
                                                if (value == null ||
                                                    (!isValidEmail(value,
                                                        isRequired: true))) {
                                                  return "Please enter valid email";
                                                }
                                                return null;
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_mobile_number".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    BlocSelector<
                                            ShippingAddressValidationBloc,
                                            ShippingAddressValidationState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.inputFieldTwoController,
                                        builder:
                                            (context, inputFieldTwoController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  inputFieldTwoController,
                                              hintText:
                                                  "msg_enter_your_mobile".tr,
                                              margin: getMargin(top: 7),
                                              textInputType:
                                                  TextInputType.phone,
                                              validator: (value) {
                                                if (!isValidPhone(value)) {
                                                  return "Please enter valid phone number";
                                                }
                                                return null;
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 19),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_address".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    BlocSelector<
                                            ShippingAddressValidationBloc,
                                            ShippingAddressValidationState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.inputFieldThreeController,
                                        builder: (context,
                                            inputFieldThreeController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  inputFieldThreeController,
                                              hintText:
                                                  "msg_enter_your_address".tr,
                                              margin: getMargin(top: 7));
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_state_name".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    BlocSelector<
                                            ShippingAddressValidationBloc,
                                            ShippingAddressValidationState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.inputFieldFourController,
                                        builder: (context,
                                            inputFieldFourController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  inputFieldFourController,
                                              hintText:
                                                  "msg_enter_a_valid_state".tr,
                                              margin: getMargin(top: 7),
                                              padding: TextFormFieldPadding
                                                  .PaddingT12,
                                              suffix: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 10,
                                                      right: 16,
                                                      bottom: 10),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgInfo)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(44)),
                                              validator: (value) {
                                                if (!isText(value)) {
                                                  return "Please enter valid text";
                                                }
                                                return null;
                                              });
                                        })
                                  ])),
                          Padding(
                              padding: getPadding(top: 20),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("lbl_zip_code".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtGilroyMedium16),
                                    BlocSelector<
                                            ShippingAddressValidationBloc,
                                            ShippingAddressValidationState,
                                            TextEditingController?>(
                                        selector: (state) =>
                                            state.inputFieldFiveController,
                                        builder: (context,
                                            inputFieldFiveController) {
                                          return CustomTextFormField(
                                              focusNode: FocusNode(),
                                              controller:
                                                  inputFieldFiveController,
                                              hintText:
                                                  "msg_enter_a_valid_zip".tr,
                                              margin: getMargin(top: 5),
                                              padding: TextFormFieldPadding
                                                  .PaddingT12,
                                              textInputAction:
                                                  TextInputAction.done,
                                              textInputType:
                                                  TextInputType.number,
                                              suffix: Container(
                                                  margin: getMargin(
                                                      left: 30,
                                                      top: 10,
                                                      right: 16,
                                                      bottom: 10),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgInfo)),
                                              suffixConstraints: BoxConstraints(
                                                  maxHeight:
                                                      getVerticalSize(44)),
                                              validator: (value) {
                                                if (!isNumeric(value)) {
                                                  return "Please enter valid number";
                                                }
                                                return null;
                                              });
                                        })
                                  ])),
                          CustomButton(
                              height: getVerticalSize(50),
                              text: "lbl_sign_in".tr,
                              margin: getMargin(top: 24, bottom: 5))
                        ])))));
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }
}
