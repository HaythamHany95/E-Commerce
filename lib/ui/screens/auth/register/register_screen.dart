import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:e_commerce/ui/widgets/auth_button.dart';
import 'package:e_commerce/ui/widgets/auth_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = 'register_screen';

  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blueColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 95.h, right: 96.h, left: 96.h),
                child: Image.asset('assets/images/app_logo.png'),
              ),
              const AuthTextFormField(
                fieldTitle: "Full Name",
                hintText: "enter your full name",
              ),
              const AuthTextFormField(
                fieldTitle: "Mobile Number",
                hintText: "enter your mobile no.",
              ),
              const AuthTextFormField(
                fieldTitle: "E-mail address",
                hintText: "enter your email address",
              ),
              const AuthTextFormField(
                fieldTitle: "Password",
                hintText: "enter your password",
              ),
              Padding(
                padding: EdgeInsets.only(top: 56.h, bottom: 100.h),
                child: AuthButton(title: "Sign Up", onPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
