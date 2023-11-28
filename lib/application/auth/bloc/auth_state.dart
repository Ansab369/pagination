part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();
  
  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {

}

 class AuthSuccessState extends AuthState {
  bool isAuthenticated ;
  AuthSuccessState(this.isAuthenticated);
 }
