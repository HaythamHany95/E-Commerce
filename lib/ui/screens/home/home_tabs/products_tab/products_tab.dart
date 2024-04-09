import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsTab extends StatelessWidget {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1 / 1.2,
        ),
        itemCount: 20,
        itemBuilder: (context, i) {
          return Material(
            borderRadius: BorderRadius.circular(15.r),
            elevation: 1.5.r,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                border: Border.all(
                  width: 2.w,
                  color: MyColors.blueColor.withOpacity(0.3),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 3,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.r),
                            topRight: Radius.circular(15.r),
                          ),
                          child: Image.asset(
                            "assets/images/product_image.png",
                            fit: BoxFit.fitWidth,
                            width: double.infinity,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(
                            highlightColor: Colors.transparent,
                            onPressed: () {},
                            icon: CircleAvatar(
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
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Product Name",
                                textAlign: TextAlign.start,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      color: MyColors.blueColor,
                                      fontSize: 15.sp,
                                    ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Price",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: MyColors.blueColor,
                                          fontSize: 14.sp,
                                        ),
                                  ),
                                  SizedBox(
                                    width: 45.w,
                                  ),
                                  Text(
                                    "122",
                                    style: TextStyle(
                                      color: MyColors.blueColor,
                                      fontSize: 14.sp,
                                      decoration: TextDecoration.combine(
                                        [TextDecoration.lineThrough],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Review(4.5)",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          color: MyColors.blueColor,
                                          fontSize: 14.sp,
                                        ),
                                  ),
                                  const Image(
                                    image: AssetImage(
                                      "assets/images/stat_icon.png",
                                    ),
                                  ),
                                  const Spacer(),
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            top: 10,
                            right: 0,
                            child: IconButton(
                              onPressed: () {},
                              icon: ImageIcon(
                                size: 30.sp,
                                const AssetImage(
                                  "assets/images/add_icon.png",
                                ),
                                color: MyColors.blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
