import 'package:flutter/material.dart';

import '../../global/colors.dart';
import '../../global/widgets.dart';

class KingJackPot extends StatefulWidget {
  const KingJackPot({super.key});

  @override
  State<KingJackPot> createState() => _KingJackPotState();
}

class _KingJackPotState extends State<KingJackPot> {
  notiTile(bool type, String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        mdm(text: title, size: 15),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(title: "King JackPot DashBoard"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            h(h: 10),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  size: 35,
                ),
                w(w: 15),
                mdm(text: "History", size: 15),
                Spacer(),
                notiTile(false, "Notifications")
              ],
            ),
            h(h: 10),
            round(
                widget: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      mdm(text: "Single Digit :   ", size: 14),
                      mdm(text: "1-2", size: 14, color: lev_one)
                    ],
                  ),
                ),
                radius: 50,
                color: white,
                h: 45,
                w: 150),
            h(h: 20),
            Expanded(child: MyGridView())
          ],
        ),
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items in a row
        crossAxisSpacing: 8.0, // Spacing between items horizontally
        mainAxisSpacing: 8.0, // Spacing between items vertically
      ),
      itemCount: 10, // Number of items in the grid
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 40.0,
          width: 40.0,
          color: white, // You can customize the color or add other decorations
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mdm(text: "04:00 PM", size: 16),
                        Icon(
                          Icons.alarm,
                          color: lev_one,
                          size: 40,
                        )
                      ],
                    ),
                    h(h: 20),
                    round(
                        widget: Center(
                          child: Container(
                            color: black,
                            child: Icon(
                              Icons.star,
                              color: lev_one,
                              size: 14,
                            ),
                          ),
                        ),
                        radius: 20,
                        color: black,
                        h: 35,
                        w: 60),
                    mdm(text: "Started Now", size: 14, color: Colors.green),
                  ],
                ),
              ),
              Spacer(),
              h(h: 10),
              round(
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      round(
                          widget: Center(
                            child: Icon(
                              Icons.play_arrow,
                              color: black,
                            ),
                          ),
                          radius: 50,
                          color: white,
                          h: 30,
                          w: 30),
                      w(w: 10),
                      mdm(text: "Play Game", size: 14, color: black)
                    ],
                  ),
                  radius: 0,
                  color: lev_one,
                  h: 40,
                  w: double.infinity)
            ],
          ),
        );
      },
    );
  }
}
