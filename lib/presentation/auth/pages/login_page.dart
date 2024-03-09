import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/button.dart';
import 'package:goystore_app/core/components/dialog.dart';
import 'package:goystore_app/core/components/input_field.dart';
import 'package:goystore_app/core/components/loading_spinkit.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:goystore_app/data/datasources/auth_local_datasource.dart';
import 'package:goystore_app/data/models/request/login_request_model.dart';
import 'package:goystore_app/presentation/auth/pages/register_page.dart';
import 'package:goystore_app/presentation/dashboard/pages/dashboard_page.dart';

import '../bloc/auth/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 24,
                bottom: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Login to continue',
                    style: secondTextTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            InputField.email(
              label: 'Email',
              controller: _emailController,
            ),
            InputField.password(
              label: 'Password',
              controller: _passwordController,
            ),
            const SpaceHeight(20.0),
            BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  errorLogin: (message) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomDialog(
                          title: 'Login Failed',
                          message: message,
                        );
                      },
                    );
                  },
                  loadedLogin: (authResponse) async {
                    await AuthLocalDatasource().saveAuthData(authResponse);

                    if (context.mounted) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CustomDialog(
                            title: 'Login',
                            message: authResponse.message,
                          );
                        },
                      );
                      context.pushReplacement(const DashboardPage());
                    }
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Button.primary(
                      onPressed: () {
                        final loginRequest = LoginRequestModel(
                          email: _emailController.text,
                          password: _passwordController.text,
                        );
                        context
                            .read<AuthBloc>()
                            .add(AuthEvent.login(loginRequest));
                      },
                      label: 'Login',
                    );
                  },
                  loading: () {
                    return const LoadingSpinkit();
                  },
                );
              },
            ),

            ///
            const SpaceHeight(20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dont have an account? ',
                  style: blackTextStyle.copyWith(),
                ),
                GestureDetector(
                  onTap: () {
                    context.push(const RegisterPage());
                  },
                  child: Text(
                    'Register',
                    style: primaryTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
