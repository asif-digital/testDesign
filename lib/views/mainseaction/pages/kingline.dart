import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';
import 'package:sara_plus/main.dart';

class KingLine extends StatefulWidget {
  const KingLine({super.key});

  @override
  State<KingLine> createState() => _KingLineState();
}

class _KingLineState extends State<KingLine> {
  List appItems = [
    {
      'iconData': Icons.payments,
      'title': 'Add Fund',
      'description': 'You can view your market and bid.',
    },
    {
      'iconData': Icons.receipt,
      'title': 'Withdraw Fund',
      'description': 'You can view your history.',
    },
    {
      'iconData': Icons.account_balance,
      'title': 'Add Bank Details',
      'description': 'You can view your StarLine history.',
    },
    {
      'iconData': Icons.history,
      'title': 'Fund Deposit History',
      'description': 'You can view your Jackpot history.',
    },
    {
      'iconData': Icons.work_history_rounded,
      'title': 'Fund WithDraw History',
      'description': 'You can view your StarLine history.',
    },
    {
      'iconData': Icons.change_circle_sharp,
      'title': 'Bank Changes History',
      'description': 'You can view your Jackpot history.',
    },
  ];
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
      appBar: topBar(title: "King Starline DashBoard"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
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
            Container(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: round(
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
                          h: 50,
                          w: 150)),
                  w(w: 15),
                  Expanded(
                      flex: 1,
                      child: round(
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
                          h: 50,
                          w: 150))
                ],
              ),
            ),
            Container(
              height: 60,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: round(
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
                          h: 50,
                          w: 150)),
                  w(w: 15),
                  Expanded(
                      flex: 1,
                      child: round(
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
                          h: 50,
                          w: 150))
                ],
              ),
            ),
            h(h: 10),
            Expanded(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: appItems.length,
                    itemBuilder: (_, i) {
                      final item = appItems[i];
                      return kngCard(
                          icon: item['iconData'],
                          title: item['title'],
                          disc: item['description']);
                    }))
          ],
        ),
      ),
    );
  }
}
