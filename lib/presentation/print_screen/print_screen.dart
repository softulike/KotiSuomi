import '../print_screen/widgets/print_item_widget.dart';
import 'bloc/print_bloc.dart';
import 'models/print_item_model.dart';
import 'models/print_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_button.dart';

class PrintScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PrintBloc>(
        create: (context) => PrintBloc(PrintState(printModelObj: PrintModel()))
          ..add(PrintInitialEvent()),
        child: PrintScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray5001,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 12, bottom: 13),
                    onTap: () {
                      onTapArrowleft3(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "lbl_print".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_files".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtGilroySemiBold18Bluegray900),
                      Padding(
                          padding: getPadding(top: 27, right: 225),
                          child: BlocSelector<PrintBloc, PrintState,
                                  PrintModel?>(
                              selector: (state) => state.printModelObj,
                              builder: (context, printModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding: getPadding(
                                              top: 17.0, bottom: 17.0),
                                          child: SizedBox(
                                              width: getHorizontalSize(396),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant
                                                      .blueGray100)));
                                    },
                                    itemCount:
                                        printModelObj?.printItemList.length ??
                                            0,
                                    itemBuilder: (context, index) {
                                      PrintItemModel model =
                                          printModelObj?.printItemList[index] ??
                                              PrintItemModel();
                                      return PrintItemWidget(model);
                                    });
                              })),
                      CustomButton(
                          height: getVerticalSize(50),
                          text: "lbl_print".tr,
                          margin: getMargin(top: 26, bottom: 5))
                    ]))));
  }

  onTapArrowleft3(BuildContext context) {
    NavigatorService.goBack();
  }
}
