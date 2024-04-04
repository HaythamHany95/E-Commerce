import 'package:e_commerce/ui/screens/auth/register/cubit/register_screen_viewmodel.dart';
import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:e_commerce/ui/widgets/auth_button.dart';
import 'package:e_commerce/ui/widgets/auth_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterScreen extends StatefulWidget {
  static const String routeName = 'register_screen';

  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _viewModel = RegisterScreenViewModel();
  bool _isPasswordSecured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blueColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Form(
            key: _viewModel.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 95.h, right: 96.h, left: 96.h),
                  child: Image.asset('assets/images/app_logo.png'),
                ),
                AuthTextFormField(
                  controller: _viewModel.userNameController,
                  fieldTitle: "Full Name",
                  hintText: "enter your full name",
                ),
                AuthTextFormField(
                  controller: _viewModel.userPhoneNoController,
                  fieldTitle: "Mobile Number",
                  hintText: "enter your mobile no.",
                ),
                AuthTextFormField(
                  controller: _viewModel.userEmailController,
                  fieldTitle: "E-mail address",
                  hintText: "enter your email address",
                ),
                AuthTextFormField(
                  controller: _viewModel.uesrPasswordController,
                  fieldTitle: "Password",
                  hintText: "enter your password",
                  obscureText: _isPasswordSecured,
                  suffixIcon: IconButton(
                      icon: (_isPasswordSecured)
                          ? const ImageIcon(
                              AssetImage('assets/images/eye_slash_icon.png'))
                          : const ImageIcon(
                              AssetImage('assets/images/eye_icon.png')),
                      onPressed: () {
                        setState(() {
                          _isPasswordSecured = !_isPasswordSecured;
                        });
                      }),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, bottom: 30.h),
                  child: AuthButton(
                      title: "Sign Up",
                      onPressed: () {
                        _viewModel.register();
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
