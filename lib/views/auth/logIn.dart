import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';
import 'package:sara_plus/views/mainseaction/mainSection.dart';

import 'forgotPin.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              h(h: 40),
              Image.network(
                  "https://i.pinimg.com/564x/1c/80/e7/1c80e7b7b53762e397652aac73e7e57d.jpg"),
              h(h: 50),
              rglr(text: "Login with Mpin", size: 14, color: Colors.black54),
              h(h: 5),
              txf_ctrl(controller: TextEditingController()),
              h(h: 20),
              InkWell(
                onTap: () {
                  toScreen(context: context, page: MainSection());
                },
                child: button(
                  name: "LogIn",
                  height: 45,
                  color: lev_one,
                  width: double.infinity,
                ),
              ),
              h(h: 20),
              InkWell(
                onTap: () {
                  toScreen(context: context, page: ForgotPin());
                },
                child: Align(
                  alignment: Alignment.center,
                  child: rglr(text: "Forgot MPIN ?", size: 14, color: lev_two),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
