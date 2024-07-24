import 'package:flutter/material.dart';
import 'package:sara_plus/views/auth/logIn.dart';
import 'package:sara_plus/views/mainseaction/mainSection.dart';

import '../../global/colors.dart';
import '../../global/widgets.dart';

class ForgotPin extends StatefulWidget {
  const ForgotPin({super.key});

  @override
  State<ForgotPin> createState() => _ForgotPinState();
}

class _ForgotPinState extends State<ForgotPin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          h(h: 50),
          head(one: "Set Your", two: "Pin"),
          h(h: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mdm(text: "Enter Otp", size: 14, color: lev_three),
                h(h: 10),
                txf_ctrl(controller: TextEditingController()),
              ],
            ),
          ),
          h(h: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                mdm(text: "Enter New Mpin", size: 14, color: lev_three),
                h(h: 10),
                txf_ctrl(controller: TextEditingController()),
              ],
            ),
          ),
          h(h: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: InkWell(
              onTap: () {
                toScreen(context: context, page: LogIn());
              },
              child: button(
                  name: "SET PIN",
                  height: 50,
                  color: lev_one,
                  width: double.infinity),
            ),
          )
        ],
      ),
    );
  }
}
