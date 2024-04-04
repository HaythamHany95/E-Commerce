import 'package:e_commerce/ui/screens/auth/register/register_screen.dart';
import 'package:e_commerce/ui/utils/my_routes.dart';
import 'package:e_commerce/ui/utils/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const ECommerceApp());
}

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MyTheme.myTheme,
        initialRoute: RegisterScreen.routeName,
        routes: MyRoutes.myRoutes,
      ),
    );
  }
}
