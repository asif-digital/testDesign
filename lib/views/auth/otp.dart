import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../global/colors.dart';
import '../../global/widgets.dart';
import 'newMpin.dart';

class Verify_Otp extends StatefulWidget {
  Verify_Otp({super.key, required this.phone});
  String phone;
  @override
  State<Verify_Otp> createState() => _Verify_OtpState();
}

class _Verify_OtpState extends State<Verify_Otp> {
  @override
  void initState() {
    super.initState();
    errorController = StreamController<ErrorAnimationType>();
  }

  List<TextEditingController> controllers = [];
  String enteredPin = "";
  String currentText = "";
  TextEditingController textEditingController = TextEditingController();
  StreamController<ErrorAnimationType>? errorController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            h(h: 50),
            head(one: "Verify Your Mobile", two: "Number"),
            Container(
                height: 300,
                child: Image.asset(
                  "assets/images/verify.png",
                )),
            h(h: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rglr(text: "Verification Code", size: 14),
                  h(h: 10),
                  rglr(
                      text: "We have sent the verification code to your",
                      size: 11),
                  rglr(text: "mobile Number", size: 11),
                  h(h: 10),
                  mdm(text: "${widget.phone}", size: 14, color: lev_one),
                  h(h: 20),
                  pins()
                ],
              ),
            ),
            h(h: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: InkWell(
                onTap: () {
                  toScreen(context: context, page: NewMpin());
                },
                child: button(
                    name: "Verify",
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

// pins
  Widget pins() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: PinCodeTextField(
        appContext: context,
        pastedTextStyle: TextStyle(
          color: lev_three,
          fontWeight: FontWeight.bold,
        ),
        length: 4,
        obscureText: true,
        obscuringCharacter: '*',
        // obscuringWidget: const FlutterLogo(
        //   size: 24,
        // ),
        blinkWhenObscuring: true,
        animationType: AnimationType.fade,
        validator: (v) {
          if (v!.length < 3) {
            return "validating..";
          } else {
            return null;
          }
        },
        pinTheme: PinTheme(
          inactiveColor: lev_three,
          activeColor: lev_one,
          selectedFillColor: white,
          inactiveFillColor: white,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 60,
          activeFillColor: Colors.white,
        ),
        cursorColor: Colors.black,
        animationDuration: const Duration(milliseconds: 300),
        enableActiveFill: true,
        errorAnimationController: errorController,
        controller: textEditingController,
        keyboardType: TextInputType.number,
        boxShadows: const [
          BoxShadow(
            offset: Offset(0, 1),
            color: Colors.black12,
            blurRadius: 10,
          )
        ],
        onCompleted: (v) async {
          // EasyLoading.show();
          debugPrint("Completed : ${v}");
          // await verify_otp(otp: v);
        },
        // onTap: () {
        //   print("Pressed");
        // },
        onChanged: (value) {
          debugPrint(value);
          setState(() {
            currentText = value;
          });
        },
        beforeTextPaste: (text) {
          debugPrint("Allowing to paste $text");
          return true;
        },
      ),
    );
  }
}
