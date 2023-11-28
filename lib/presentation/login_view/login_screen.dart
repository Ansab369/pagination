import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagination/application/auth/bloc/auth_bloc.dart';
import 'package:pagination/constants/styles.dart';
import 'package:pagination/presentation/login_view/widgets/screen_title.dart';
import 'package:pagination/presentation/pagination_view/pagination_screen.dart';
import 'package:pagination/presentation/registretion_view/registretion_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // controllers
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _showPassword = false; // show password
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccessState) {
          // User is logged in, navigate to home screen
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => PaginationScreen(),
          ));
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
                    title: 'Welcome Back  👋',
                    subTitle: 'Login into your account to continue',
                  ),
                  const SizedBox(height: 50),
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
                          .add(SubmitLoginButtonClickedEvent(
                            email,
                            password,
                          ));
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'LogIn',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => RegisterScreen()));
                      },
                      child: const Text(
                        'Register',
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
