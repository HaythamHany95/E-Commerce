// import 'package:e_commerce/domain/use_cases/register_use_case.dart';
import 'package:e_commerce/ui/screens/auth/register/cubit/register_screen_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreenViewModel extends Cubit<RegisterScreenStates> {
// RegisterUseCase? registerUseCase;
  RegisterScreenViewModel() : super(InitialState());

  var userNameController = TextEditingController();
  var userPhoneNoController = TextEditingController();
  var userEmailController = TextEditingController();
  var uesrPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  void register() {}
}
