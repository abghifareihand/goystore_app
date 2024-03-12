import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:goystore_app/core/constants/colors.dart';
import 'package:goystore_app/core/extensions/navigator.dart';
import 'package:goystore_app/presentation/dashboard/pages/dashboard_page.dart';


class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.success,
        animType: AnimType.rightSlide,
        title: 'Payment Success',
        btnOkOnPress: () {
          context.push(const DashboardPage());
        },
        btnOkColor: AppColor.green,
        btnOkText: 'Close',
      ).show();
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}