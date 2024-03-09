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
import 'package:goystore_app/data/models/request/register_request_model.dart';
import 'package:goystore_app/presentation/dashboard/pages/dashboard_page.dart';

import '../bloc/auth/auth_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
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
                    'Welcome User',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    'Register to join',
                    style: secondTextTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            InputField.text(
              label: 'Full Name',
              controller: _nameController,
            ),
            InputField.username(
              label: 'Username',
              controller: _usernameController,
            ),

            InputField.email(
              label: 'Email',
              controller: _emailController,
            ),
            InputField.number(
              label: 'Phone',
              controller: _phoneController,
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
                  errorRegister: (message) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return CustomDialog(
                          title: 'Register Failed',
                          message: message,
                        );
                      },
                    );
                  },
                  loadedRegister: (authResponse) async {
                    await AuthLocalDatasource().saveAuthData(authResponse);
                    if (context.mounted) {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CustomDialog(
                            title: 'Register',
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
                        final registerRequest = RegisterRequestModel(
                          name: _nameController.text,
                          username: _usernameController.text,
                          email: _emailController.text,
                          phone: _phoneController.text,
                          password: _passwordController.text,
                        );
                        context
                            .read<AuthBloc>()
                            .add(AuthEvent.register(registerRequest));
                      },
                      label: 'Register',
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
                  'Already have an account? ',
                  style: blackTextStyle.copyWith(),
                ),
                GestureDetector(
                  onTap: () {
                    context.pop();
                  },
                  child: Text(
                    'Login',
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
