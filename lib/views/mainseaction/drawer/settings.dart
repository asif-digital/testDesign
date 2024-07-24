import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool mainNotificaion = false;
  bool game_notification = false;
  bool king_starlineNoti = false;
  bool king_JackPot = false;

  String eng = 'eng';
  String hin = 'hin';
  String tel = 'tel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(title: "Settings"),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  round(
                      widget: Center(
                        child: mdm(text: "Notification Settings", size: 15),
                      ),
                      radius: 0,
                      color: lev_one,
                      h: 50,
                      w: double.infinity),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        notiTile(mainNotificaion, "Main Notification"),
                        Divider(
                          height: 4,
                        ),
                        notiTile(game_notification, "Game Notification"),
                        Divider(
                          height: 4,
                        ),
                        notiTile(
                            king_starlineNoti, "King StarLine Notification"),
                        Divider(
                          height: 4,
                        ),
                        notiTile(king_JackPot, "King JackPot Notification")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            h(h: 20),
            Card(
              child: Column(
                children: [
                  round(
                      widget: Center(
                        child: mdm(text: "Language Settings", size: 15),
                      ),
                      radius: 0,
                      color: lev_one,
                      h: 50,
                      w: double.infinity),
                  h(h: 10),
                  Column(
                    children: [
                      lnagTile(title: "English", val: eng),
                      Divider(
                        height: 4,
                      ),
                      lnagTile(title: "Hindi", val: hin),
                      Divider(
                        height: 4,
                      ),
                      lnagTile(title: "Telugu", val: tel),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  lnagTile({required String title, required String val}) {
    return Row(
      children: [
        Radio(
          activeColor: lev_one,
          value: val,
          groupValue: val,
          onChanged: (value) {
            setState(() {
              val = value.toString();
            });
          },
        ),
        w(w: 5),
        rglr(text: title, size: 13),
      ],
    );
  }

  notiTile(bool type, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        rglr(text: title, size: 13),
        // Adds space between text and switch
        Switch(
          activeColor: lev_one,
          value: type,
          onChanged: (value) {
            setState(() {
              type = value;
            });
          },
        ),
      ],
    );
  }
}
