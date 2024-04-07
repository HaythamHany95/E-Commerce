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
            children: ads.map((e) => Image.asset(e)).toList(),
          )
        ],
      ),
    );
  }
}
