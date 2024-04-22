import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoritsTab extends StatefulWidget {
  const FavoritsTab({super.key});

  @override
  State<FavoritsTab> createState() => _FavoritsTabState();
}

class _FavoritsTabState extends State<FavoritsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, i) {
                return Container(
                  height: 152.h,
                  margin: EdgeInsets.symmetric(vertical: 15.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    border: Border.all(
                      color: MyColors.blueColor.withOpacity(0.3),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            border: Border.all(
                              color: MyColors.blueColor.withOpacity(0.3),
                            ),
                          ),
                          child: Image.asset(
                            'assets/images/product_image.png',
                            height: 152.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 8.w, bottom: 2.h, right: 8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 190.w,
                                    child: Text(
                                      'Product Name',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(color: MyColors.blueColor),
                                    ),
                                  ),
                                  IconButton(
                                    highlightColor: Colors.transparent,
                                    onPressed: () {},
                                    icon: Material(
                                      elevation: 4,
                                      shape: const CircleBorder(),
                                      child: CircleAvatar(
                                        backgroundColor: MyColors.whiteColor,
                                        radius: 18.r,
                                        child: ImageIcon(
                                          const AssetImage(
                                            "assets/images/favorit_icon.png",
                                          ),
                                          size: 25.r,
                                          color: MyColors.blueColor,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Category',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                        color: MyColors.blueColor
                                            .withOpacity(0.4)),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${1200} LE',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(color: MyColors.blueColor),
                                  ),
                                  MaterialButton(
                                    color: MyColors.blueColor,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                    onPressed: () {},
                                    child: Text(
                                      "Add To Cart",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(fontSize: 14.sp),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
