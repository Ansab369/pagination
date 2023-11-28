import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pagination/constants/validations.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});

    on<SubmitLoginButtonClickedEvent>((event, emit) async {
      bool isLogin = await login(event.email, event.password);
      if (isLogin == true) {
        emit(AuthSuccessState(true));
      }
    });

    on<SubmitRegistretiondButtonClickedEvent>((event, emit) async {
      bool isRegister =
          await register(event.email, event.password);
      if (isRegister == true) {
        emit(AuthSuccessState(true));
      }
    });
  }

  //
  //  login account
  Future<bool> login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        showErrorMessage('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        showErrorMessage('Wrong password provided for that user.');
      }
      return false;
    }
  }

// create new account 
  Future<bool> register(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailAddress, password: password);
              
      return true;
    } on FirebaseAuthException catch (e) {
      log(e.toString());
      if (e.code == 'weak-password') {
        showErrorMessage('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        showErrorMessage('The account already exists for that email.');
      }
      return false;
    }
  }
}
