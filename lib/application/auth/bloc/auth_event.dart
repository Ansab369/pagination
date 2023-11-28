part of 'auth_bloc.dart';

sealed class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}



class SubmitLoginButtonClickedEvent extends AuthEvent {
  String email;
  String password;

  SubmitLoginButtonClickedEvent(this.email,this.password);
}

class SubmitRegistretiondButtonClickedEvent extends AuthEvent {
   String email;
  String password;

  SubmitRegistretiondButtonClickedEvent(this.email,this.password);
}