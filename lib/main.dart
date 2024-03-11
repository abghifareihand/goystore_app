import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:goystore_app/presentation/cart/bloc/cart/cart_bloc.dart';
import 'package:goystore_app/presentation/home/bloc/products/products_bloc.dart';

import 'data/datasources/auth_local_datasource.dart';
import 'presentation/auth/pages/login_page.dart';
import 'presentation/dashboard/pages/dashboard_page.dart';
import 'presentation/auth/bloc/auth/auth_bloc.dart';
import 'presentation/profile/bloc/logout/logout_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        BlocProvider(
          create: (context) => ProductsBloc(),
        ),
        BlocProvider(
          create: (context) => CartBloc(),
        ),
        BlocProvider(
          create: (context) => LogoutBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
        ),
        debugShowCheckedModeBanner: false,
        home: const DashboardPage(),
        // home: FutureBuilder<bool>(
        //   future: AuthLocalDatasource().isLogin(),
        //   builder: (context, snapshot) {
        //     debugPrint("isLogin: ${snapshot.data}");
        //     if (snapshot.data != null && snapshot.data!) {
        //       return const DashboardPage();
        //     } else {
        //       return const LoginPage();
        //     }
        //   },
        // ),
      ),
    );
  }
}
