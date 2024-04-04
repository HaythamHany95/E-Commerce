abstract class RegisterScreenStates {}

class InitialState extends RegisterScreenStates {}

class LoadingState extends RegisterScreenStates {}

class ErrorState extends RegisterScreenStates {
  String? errorMessage;
  ErrorState({this.errorMessage});
}

class SuccessState extends RegisterScreenStates {}
