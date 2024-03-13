import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/button.dart';
import 'package:goystore_app/core/components/dialog.dart';
import 'package:goystore_app/core/components/input_field.dart';
import 'package:goystore_app/core/components/loading_spinkit.dart';
import 'package:goystore_app/core/components/spaces.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/data/models/request/user_request_model.dart';
import 'package:goystore_app/data/models/user_response_model.dart';
import 'package:goystore_app/presentation/profile/bloc/user/user_bloc.dart';

class EditProfilePage extends StatefulWidget {
  final UserResponseModel userResponse;
  const EditProfilePage({
    super.key,
    required this.userResponse,
  });

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.userResponse.data.name;
    _emailController.text = widget.userResponse.data.email;
    _usernameController.text = widget.userResponse.data.username;
    _phoneController.text = widget.userResponse.data.phone;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColor.primary,
        title: const Text('Edit Profile'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          InputField.text(
            label: 'Name',
            controller: _nameController,
          ),
          InputField.email(
            label: 'Email',
            controller: _emailController,
          ),
          InputField.username(
            label: 'Username',
            controller: _usernameController,
          ),
          InputField.number(
            label: 'Phone',
            controller: _phoneController,
          ),
          const SpaceHeight(20.0),
          BlocConsumer<UserBloc, UserState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                loaded: (authResponse) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CustomDialog(
                        title: 'Update Profile',
                        message: authResponse.message,
                      );
                    },
                  );
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () {
                  return Button.primary(
                    onPressed: () {
                      final userRequest = UserRequestModel(
                        name: _nameController.text,
                        email: _emailController.text,
                        username: _usernameController.text,
                        phone: _phoneController.text,
                      );
                      context
                          .read<UserBloc>()
                          .add(UserEvent.updateUser(userRequest));
                    },
                    label: 'Update Data Profile',
                  );
                },
                loading: () {
                  return const LoadingSpinkit();
                },
              );
            },
          )
        ],
      ),
    );
  }
}
