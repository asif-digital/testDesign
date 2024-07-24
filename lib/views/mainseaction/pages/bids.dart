import 'package:flutter/material.dart';

import '../../../main.dart';

class BidsPage extends StatelessWidget {
  BidsPage({super.key});

  List appItems = [
    {
      'iconData': Icons.calendar_today,
      'title': 'Bid History',
      'description': 'You can view your market and bid.',
    },
    {
      'iconData': Icons.score,
      'title': 'Game Results',
      'description': 'You can view your history.',
    },
    {
      'iconData': Icons.history,
      'title': 'King Starline',
      'description': 'You can view your StarLine history.',
    },
    {
      'iconData': Icons.point_of_sale,
      'title': 'King Jackpot',
      'description': 'You can view your Jackpot history.',
    },
    {
      'iconData': Icons.schedule,
      'title': 'StarLine History',
      'description': 'You can view your StarLine history.',
    },
    {
      'iconData': Icons.horizontal_split_sharp,
      'title': 'Jackpot History',
      'description': 'You can view your Jackpot history.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: appItems.length,
                  itemBuilder: (_, i) {
                    final item = appItems[i];
                    return x_Card(
                        icon: item['iconData'],
                        title: item['title'],
                        disc: item['description']);
                  }))
        ],
      ),
    );
  }
}
