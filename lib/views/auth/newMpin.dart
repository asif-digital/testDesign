import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../../global/widgets.dart';
import 'logIn.dart';

class NewMpin extends StatefulWidget {
  const NewMpin({super.key});

  @override
  State<NewMpin> createState() => _NewMpinState();
}

class _NewMpinState extends State<NewMpin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            h(h: 50),
            head(one: "Set Your", two: "Pin"),
            Container(
                height: 280,
                child: Image.asset(
                  "assets/images/mpin.png",
                )),
            h(h: 20),
            // pins(),
            h(h: 50),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  mdm(text: "Enter New Mpin", size: 14, color: lev_three),
                  h(h: 20),
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
      ),
    );
  }
}
