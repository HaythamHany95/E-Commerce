import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    List ads = [
      "assets/images/ads_image1.png",
      "assets/images/ads_image2.png",
      "assets/images/ads_image3.png"
    ];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlideshow(
              autoPlayInterval: 3500,
              indicatorBottomPadding: 20.h,
              isLoop: true,
              indicatorPadding: 5.w,
              indicatorRadius: 5.r,
              indicatorColor: MyColors.blueColor,
              indicatorBackgroundColor: MyColors.whiteColor,
              children: ads.map((adPath) => Image.asset(adPath)).toList(),
            ),
            Container(
              height: 400.h,
              margin: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
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
                              ?.copyWith(
                                  color: MyColors.blueColor, fontSize: 15.sp),
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
                        itemCount: 20,
                        itemBuilder: (context, i) {
                          return Column(
                            children: [
                              CircleAvatar(
                                radius: 50.r,
                                foregroundImage: const AssetImage(
                                  "assets/images/ads_image2.png",
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Text(
                                "Category",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        color: MyColors.blueColor,
                                        fontSize: 15.sp),
                              )
                            ],
                          );
                        }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
