import 'package:flutter/material.dart';

class PassBook extends StatefulWidget {
  @override
  State<PassBook> createState() => _PassBookState();
}

class _PassBookState extends State<PassBook> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white, // Set white background color
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: TabBar(
                  isScrollable: true, // Make the tab titles scrollable
                  indicatorColor: Color(0xffFAB029),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(text: 'Transaction Date'),
                    Tab(text: 'Particulars'),
                    Tab(text: 'Previous Amount'),
                    Tab(text: 'Transaction Amount'),
                    Tab(text: 'Current Amount'),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              // Your content for 'Transaction Date' tab
              Center(child: Text('Content for Transaction Date')),
              // Your content for 'Particulars' tab
              Center(child: Text('Content for Particulars')),
              // Your content for 'Previous Amount' tab
              Center(child: Text('Content for Previous Amount')),
              // Your content for 'Transaction Amount' tab
              Center(child: Text('Content for Transaction Amount')),
              // Your content for 'Current Amount' tab
              Center(child: Text('Content for Current Amount')),
            ],
          ),
        ),
      ),
    );
  }
}
