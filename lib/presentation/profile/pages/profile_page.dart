import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/core/components/button.dart';
import 'package:goystore_app/core/components/loading_spinkit.dart';
import 'package:goystore_app/core/extensions/navigator.dart';

import '../../../data/datasources/auth_local_datasource.dart';
import '../../auth/pages/login_page.dart';
import '../bloc/logout/logout_bloc.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: BlocConsumer<LogoutBloc, LogoutState>(
              listener: (context, state) {
                state.maybeWhen(
                  orElse: () {},
                  error: (message) {},
                  loaded: (message) async {
                    await AuthLocalDatasource().removeAuthData();
                    if (context.mounted) {
                      context.pushAndRemoveUntil(
                          const LoginPage(), (route) => false);
                    }
                  },
                );
              },
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return Button.primary(
                      onPressed: () {
                        context
                            .read<LogoutBloc>()
                            .add(const LogoutEvent.logout());
                      },
                      label: 'Logout',
                    );
                  },
                  loading: () {
                    return const LoadingSpinkit();
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
