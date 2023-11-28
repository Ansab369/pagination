import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagination/application/auth/bloc/auth_bloc.dart';
import 'package:pagination/constants/styles.dart';
import 'package:pagination/presentation/login_view/login_screen.dart';
import 'package:pagination/presentation/login_view/widgets/screen_title.dart';
import 'package:pagination/presentation/pagination_view/pagination_screen.dart';
import 'package:provider/provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // controllers
  TextEditingController mobileController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false; // show password
  @override
  Widget build(BuildContext context) {
    // SocialMediaProvider socialProvider =
    //     Provider.of<SocialMediaProvider>(context);

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          // User is logged in, navigate to home screen
          if (state.isAuthenticated) {
             Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => PaginationScreen(),
          ));
          }
         
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80.0),
                  const ScreenTitle(
                    title: 'Welcome 👋',
                    subTitle: 'Create your new account',
                  ),
                  SizedBox(height: 40),
                  TextField(
                    controller: mobileController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Email',
                      prefixIcon: const Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Name',
                      prefixIcon: const Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    obscureText: !_showPassword,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 40.0),
                  TextButton(
                    style: mainButtonStyle,
                    onPressed: () async {
                      final email = mobileController.text;
                      final password = passwordController.text;

                      context
                          .read<AuthBloc>()
                          .add(SubmitRegistretiondButtonClickedEvent(
                            email,
                            password,
                          ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'SignIn',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => LoginScreen()));
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          color: kBlueColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
