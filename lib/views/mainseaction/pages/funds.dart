import 'package:flutter/material.dart';

import '../../../main.dart';

class Funds extends StatefulWidget {
  const Funds({super.key});

  @override
  State<Funds> createState() => _FundsState();
}

class _FundsState extends State<Funds> {
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
