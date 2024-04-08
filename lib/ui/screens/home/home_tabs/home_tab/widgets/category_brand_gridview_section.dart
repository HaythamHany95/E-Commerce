import 'package:e_commerce/ui/screens/home/home_tabs/home_tab/cubit/home_tab_viewmodel.dart';
import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryBrandGridViewSection extends StatelessWidget {
  final HomeTabViewModel viewModel;
  final String? sectionName;
  const CategoryBrandGridViewSection(
      {super.key, required this.viewModel, this.sectionName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionName ?? "",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: MyColors.blueColor),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "view all",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: MyColors.blueColor, fontSize: 15.sp),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 0.70,
                  mainAxisSpacing: 5.w,
                  crossAxisSpacing: 40.h,
                  crossAxisCount: 2,
                ),
                itemCount: viewModel.categories.length,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      (viewModel.categories.isEmpty)
                          ? const CircularProgressIndicator(
                              color: MyColors.blueColor,
                            )
                          : CircleAvatar(
                              radius: 50.r,
                              foregroundImage: NetworkImage(
                                viewModel.categories[i].image ?? "",
                              ),
                            ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        textAlign: TextAlign.center,
                        viewModel.categories[i].name ?? "",
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: MyColors.blueColor, fontSize: 15.sp),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
