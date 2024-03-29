
import '../model/login_model.dart';

abstract class LogInState {}

class LogInInitialState extends LogInState {}

class LogInValidState extends LogInState {}

class LogInErrorState extends LogInState {
  final String errorMessage;
  LogInErrorState(this.errorMessage);
}

class LogInLoadingState extends LogInState {}

class LogInSuccessState extends LogInState {
   late final LoginModel loginModel;
     LogInSuccessState({required this.loginModel});
}

class LogInFailState extends LogInState {}
