import 'package:flutter/material.dart';
import 'package:sara_plus/global/widgets.dart';

import '../../../global/colors.dart';

class GameRates extends StatefulWidget {
  const GameRates({super.key});

  @override
  State<GameRates> createState() => _GameRatesState();
}

class _GameRatesState extends State<GameRates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(title: "Game Rates"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            h(h: 20),
            round(
                widget: Center(
                  child: mdm(text: "Game Win Ratio For All Bids", size: 15),
                ),
                radius: 0,
                color: lev_one,
                h: 50,
                w: double.infinity),
            h(h: 5),
            bar(tilte: "Singel Digit", val: "- 9.50"),
            h(h: 5),
            bar(tilte: "Red Brakers", val: "- 9.50"),
            h(h: 20),
            round(
                widget: Center(
                  child:
                      mdm(text: "King Jackpot Game Win Ratio Bids", size: 15),
                ),
                radius: 0,
                color: lev_one,
                h: 50,
                w: double.infinity),
            h(h: 5),
            bar(tilte: "Singel Digit", val: "- 9.50"),
            h(h: 5),
            bar(tilte: "Red Brakers", val: "- 9.50"),
            round(
                widget: Center(
                  child:
                      mdm(text: "King Starline Game Win Ratio Bids", size: 15),
                ),
                radius: 0,
                color: lev_one,
                h: 50,
                w: double.infinity),
            h(h: 5),
            bar(tilte: "Singel Digit", val: "- 9.50"),
            h(h: 5),
            bar(tilte: "Red Brakers", val: "- 9.50"),
          ],
        ),
      ),
    );
  }

  bar({required String tilte, required String val}) {
    return SizedBox(
      height: 60,
      child: Card(
          child: Center(child: rglr(text: "${tilte} :  - ${val}", size: 12))),
    );
  }
}
