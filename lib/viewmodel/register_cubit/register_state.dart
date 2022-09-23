part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}
class RegisterLoadingState extends RegisterState{}
class RegisterSuccessState extends RegisterState{
  final RegisterModel registerModel;

  RegisterSuccessState(this.registerModel);
}
class RegisterErrorsState extends RegisterState{
  final String error;

  RegisterErrorsState(this.error);

}
class changepasswordState extends RegisterState{}
