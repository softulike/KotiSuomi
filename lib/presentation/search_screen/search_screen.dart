import '../search_screen/widgets/search_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:flutter/material.dart';
import 'package:ral_s_application1/core/app_export.dart';
import 'package:ral_s_application1/widgets/app_bar/appbar_image.dart';
import 'package:ral_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:ral_s_application1/widgets/custom_search_view.dart';

class SearchScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray5001,
            appBar: CustomAppBar(
                height: getVerticalSize(74),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 16, bottom: 16),
                    onTap: () {
                      onTapArrowleft10(context);
                    }),
                centerTitle: true,
                title: BlocSelector<SearchBloc, SearchState,
                        TextEditingController?>(
                    selector: (state) => state.inputFieldController,
                    builder: (context, inputFieldController) {
                      return CustomSearchView(
                          width: getHorizontalSize(320),
                          focusNode: FocusNode(),
                          controller: inputFieldController,
                          hintText: "lbl_search_anything".tr,
                          prefix: Container(
                              margin: getMargin(
                                  left: 12, top: 12, right: 8, bottom: 12),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(44)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    inputFieldController!.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600))));
                    }),
                actions: [
                  AppbarImage(
                      height: getSize(20),
                      width: getSize(20),
                      svgPath: ImageConstant.imgMicrophone,
                      margin:
                          getMargin(left: 16, top: 18, right: 16, bottom: 18))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 10, right: 16, bottom: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Divider(
                          height: getVerticalSize(1),
                          thickness: getVerticalSize(1),
                          color: ColorConstant.blueGray100),
                      Padding(
                          padding: getPadding(top: 8),
                          child: BlocSelector<SearchBloc, SearchState,
                                  SearchModel?>(
                              selector: (state) => state.searchModelObj,
                              builder: (context, searchModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return Padding(
                                          padding:
                                              getPadding(top: 9.0, bottom: 9.0),
                                          child: SizedBox(
                                              width: getHorizontalSize(396),
                                              child: Divider(
                                                  height: getVerticalSize(1),
                                                  thickness: getVerticalSize(1),
                                                  color: ColorConstant
                                                      .blueGray100)));
                                    },
                                    itemCount:
                                        searchModelObj?.searchItemList.length ??
                                            0,
                                    itemBuilder: (context, index) {
                                      SearchItemModel model = searchModelObj
                                              ?.searchItemList[index] ??
                                          SearchItemModel();
                                      return SearchItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 9, bottom: 5),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.blueGray100))
                    ]))));
  }

  onTapArrowleft10(BuildContext context) {
    NavigatorService.goBack();
  }
}
