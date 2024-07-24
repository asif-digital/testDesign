import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../../global/widgets.dart';
import 'otp.dart';

class Enter_Phone extends StatefulWidget {
  const Enter_Phone({super.key});

  @override
  State<Enter_Phone> createState() => _Enter_PhoneState();
}

class _Enter_PhoneState extends State<Enter_Phone> {
  TextEditingController _phone = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            h(h: 50),
            head(one: "Enter Your Mobile", two: "Number"),
            h(h: 50),
            Container(
                height: 300,
                child: Image.asset(
                  "assets/images/logIn.png",
                )),
            h(h: 50),
            Padding(
              padding: EdgeInsets.all(15),
              child: text_feild(
                  icon: Icons.phone,
                  hint: "Enter Phone Number",
                  number: true,
                  contrl: _phone),
            ),
            h(h: 50),
            InkWell(
              onTap: () {
                toScreen(
                    context: context,
                    page: Verify_Otp(
                      phone: "703635354",
                    ));
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: button(
                    name: "Next",
                    height: 50,
                    color: lev_one,
                    width: double.infinity,
                    radius: 0),
              ),
            ),
            h(h: 20)
          ],
        ),
      ),
    );
  }
}
