import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: topBar(title: "Notifications"),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("assets/images/notify.png"),
          ),
          h(h: 20),
          mdm(text: "No Notifications", size: 15)
        ],
      )),
    );
  }
}
