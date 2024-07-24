import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:sara_plus/global/widgets.dart';
import 'package:sara_plus/main.dart';
import 'package:sara_plus/views/mainseaction/games/games.dart';
import 'package:sara_plus/views/mainseaction/kingpot.dart';

import '../../../global/colors.dart';
import 'kingline.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  marque() {
    return Container(
      alignment: Alignment.center,
      height: 35,
      color: lev_one.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.only(top: 9.0),
        child: Marquee(
          text:
              '24x7 HelpLine Number 987384344. Available Languages : Hindi, Kannada',
          style: TextStyle(fontFamily: "PopM", color: red),
          scrollAxis: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          blankSpace: 20.0,
          velocity: 50.0,
          // pauseAfterRound: Duration(seconds: 0),
          startPadding: 10.0,
          accelerationDuration: Duration(seconds: 0),
          accelerationCurve: Curves.linear,
          decelerationDuration: Duration(milliseconds: 00),
          decelerationCurve: Curves.easeOut,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            h(h: 10),
            marque(),
            h(h: 10),
            Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    toScreen(context: context, page: KingLine());
                  },
                  child: round(
                      widget: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            round(
                                widget: Center(
                                  child: Icon(Icons.play_arrow),
                                ),
                                radius: 50,
                                color: white,
                                h: 35,
                                w: 35),
                            w(w: 10),
                            mdm(
                              text: "King StarLine",
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      radius: 50,
                      color: lev_one,
                      h: 50,
                      w: double.infinity),
                )),
                w(w: 20),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    toScreen(context: context, page: KingLine());
                  },
                  child: round(
                      widget: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            round(
                                widget: Center(
                                  child: Icon(Icons.play_arrow),
                                ),
                                radius: 50,
                                color: white,
                                h: 35,
                                w: 35),
                            w(w: 10),
                            mdm(
                              text: "King JackPot",
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      radius: 50,
                      color: lev_one,
                      h: 50,
                      w: double.infinity),
                )),
              ],
            ),
            h(h: 10),
            Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (_, i) {
                      return InkWell(
                          onTap: () {
                            toScreen(context: context, page: Games());
                          },
                          child: Bids());
                    }))
          ],
        ),
      ),
    );
  }
}
