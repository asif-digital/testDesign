import 'dart:async';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';
import 'package:sara_plus/views/auth/phone.dart';
import 'package:sara_plus/views/mainseaction/mainSection.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Enter_Phone(),
  ));
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffFAB029),
        hintColor: Color(0xffFAB029),
      ),
      home: Scaffold(
        backgroundColor: white,
        body: Enter_Phone(),
      ),
    );
  }
}

// ignore: must_be_immutable
class Otp_Screen extends StatefulWidget {
  Otp_Screen({super.key, required this.user_phone});
  String user_phone;
  @override
  State<Otp_Screen> createState() => _Otp_ScreenState();
}

class _Otp_ScreenState extends State<Otp_Screen> {
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
      body: Column(
        children: [
          h(h: 50),
          head(one: "Set Your", two: "Pin"),
          Container(
              height: 300,
              child: Image.asset(
                "assets/images/logIn.png",
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
            child: button(
                name: "SET PIN",
                height: 50,
                color: lev_one,
                width: double.infinity),
          )
        ],
      ),
    );
  }

  Widget pins() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
      ),
    );
  }
}

class Component extends StatelessWidget {
  const Component({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: mdm(text: "Desing", size: 22),
      ),
      body: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: lev_one,
                    size: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bld(text: "Bid History", size: 16),
                      rglr(
                          text: "You can view your market bid history",
                          size: 14,
                          color: lev_two),
                    ],
                  ),
                  round(
                      widget: Center(
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: lev_one,
                        ),
                      ),
                      radius: 50,
                      color: lev_three,
                      h: 40,
                      w: 40)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Bids extends StatelessWidget {
  const Bids({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: white,
      child: Container(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      semi(text: "Muzammil", size: 18),
                      h(h: 4),
                      semi(text: "43453", size: 14, color: lev_one),
                      Row(
                        children: [
                          Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  mdm(text: "Open Bids", size: 12),
                                  mdm(text: "10 Am", size: 12),
                                ],
                              )),
                          Expanded(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  mdm(text: "Open Bids", size: 12),
                                  mdm(text: "10 Am", size: 12),
                                ],
                              ))
                        ],
                      )
                    ],
                  )),
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      mdm(text: "Closed For Today", size: 10),
                      round(
                          widget: Center(
                            child: Icon(Icons.play_arrow),
                          ),
                          radius: 50,
                          color: lev_one,
                          h: 35,
                          w: 35),
                      mdm(text: "Play Game", size: 12)
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class x_Card extends StatelessWidget {
  x_Card(
      {super.key, required this.icon, required this.title, required this.disc});
  String title, disc;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 70,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  icon,
                  color: lev_one,
                  size: 30,
                ),
              ),
              w(w: 10),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    bld(text: "${title}", size: 14),
                    rglr(text: "${disc}", size: 12, color: lev_two),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: round(
                    widget: Center(
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: lev_one,
                        size: 20,
                      ),
                    ),
                    radius: 50,
                    color: lev_three,
                    h: 30,
                    w: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class kngCard extends StatelessWidget {
  kngCard(
      {super.key, required this.icon, required this.title, required this.disc});
  String title, disc;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        height: 80,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 1,
                child: Icon(
                  Icons.alarm,
                  color: black,
                  size: 40,
                ),
              ),
              w(w: 30),
              Expanded(
                flex: 7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    bld(text: "10: 00 Am", size: 14),
                    h(h: 5),
                    rglr(
                        text: "Closed Today",
                        size: 12,
                        color: Colors.redAccent),
                  ],
                ),
              ),
              round(
                  widget: Center(
                    child: mdm(text: "133-7", size: 12, color: lev_one),
                  ),
                  radius: 50,
                  color: black,
                  h: 30,
                  w: 70),
              w(w: 10),
              Align(
                alignment: Alignment.centerRight,
                child: round(
                    widget: Center(
                      child: round(
                          widget: Center(
                            child: Icon(Icons.play_arrow),
                          ),
                          radius: 50,
                          color: lev_one,
                          h: 35,
                          w: 35),
                    ),
                    radius: 50,
                    color: lev_three,
                    h: 30,
                    w: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
