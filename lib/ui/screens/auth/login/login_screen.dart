import 'package:e_commerce/ui/screens/auth/register/register_screen.dart';
import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:e_commerce/ui/widgets/auth_button.dart';
import 'package:e_commerce/ui/widgets/auth_textform_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login_screen';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordSecured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blueColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.w),
        child: SingleChildScrollView(
          child: Form(
            // key: _viewModel.formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 95.h, right: 96.h, left: 96.h),
                  child: Image.asset('assets/images/app_logo.png'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, bottom: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Welcome Back To Route",
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontSize: 24),
                      ),
                      Text(
                        "Please sign in with your mail",
                        style: Theme.of(context)
                            .textTheme
                            .titleSmall
                            ?.copyWith(color: MyColors.whiteColor),
                      )
                    ],
                  ),
                ),
                const AuthTextFormField(
                  // controller: _viewModel.userEmailController,
                  fieldTitle: "E-mail",
                  hintText: "enter your email address",
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: AuthTextFormField(
                    // controller: _viewModel.uesrPasswordController,
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
                ),
                InkWell(
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {},
                  child: Text(
                    "Forget Password",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.end,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50.h, bottom: 30.h),
                  child: AuthButton(
                      title: "Login",
                      onPressed: () {
                        // _viewModel.register();
                      }),
                ),
                InkWell(
                  overlayColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: Text(
                    "Don't have an account? Create Account",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
