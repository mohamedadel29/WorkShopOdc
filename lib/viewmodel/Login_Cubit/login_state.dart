part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginLoadingStates extends LoginState{}
class LoginSuccessStates extends LoginState{
  final LoginModel loginModel;

  LoginSuccessStates(this.loginModel);
}
class LoginErrorsStates extends LoginState{
  final String error;

  LoginErrorsStates(this.error);

}
class changepasswordStates extends LoginState{}
