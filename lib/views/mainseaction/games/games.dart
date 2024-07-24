import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';

class Games extends StatelessWidget {
  List games = [
    "Single Digits",
    "Single Digits Bulk",
    "Jodi Digits",
    "Jodi Digits Bulk",
    "Single Pana",
    "Single Pana Bulk",
    "Double Pana",
    "Double Pana Bulk",
    "Triple Pana",
    "Panel Group",
    "Red Brackets",
    "SB DP TP",
    "Check Pana SPDP",
    "SP Motor",
    "Group Jodi",
    "SB DP TP",
    "Check Pana SPDP",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar(title: "Radha Day"),
        backgroundColor: white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                  physics: BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items in a row
                    crossAxisSpacing: 3.0, // Spacing between items horizontally
                    mainAxisSpacing: 3.0, // Spacing between items vertically
                  ),
                  itemCount: games.length, // Number of items in the grid
                  itemBuilder: (BuildContext context, int index) {
                    final item = games[index];
                    return InkWell(
                      onTap: () {
                        toScreen(context: context, page: EnterGame());
                      },
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: lev_three,
                            border: Border.all(
                              color: white,
                            )),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              round(
                                  widget: Center(
                                    child: Icon(
                                      Icons.join_full,
                                      size: 50,
                                      color: lev_one,
                                    ),
                                  ),
                                  radius: 100,
                                  color: white,
                                  h: 120,
                                  w: 120),
                              h(h: 10),
                              mdm(text: item, size: 12)
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}

class EnterGame extends StatefulWidget {
  @override
  _EnterGameState createState() => _EnterGameState();
}

class _EnterGameState extends State<EnterGame> {
  List<String> gameTypes = ['Single', 'Double'];
  String selectedGameType = 'Single';
  TextEditingController pointsController = TextEditingController();
  TextEditingController digitController = TextEditingController();
  List<String> itemList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(title: "Single Digit Board"),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DropdownButtonFormField(
              value: selectedGameType,
              items: gameTypes.map((type) {
                return DropdownMenuItem(
                  value: type,
                  child: Text(type),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedGameType = value.toString();
                });
              },
              decoration: InputDecoration(
                labelText: 'Select Game Type',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: pointsController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Points',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: digitController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter Single Digit',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(lev_one)),
              onPressed: () {
                setState(() {
                  String newItem =
                      '$selectedGameType - Points: ${pointsController.text}, Digit: ${digitController.text}';
                  itemList.add(newItem);
                  // Clear text fields after adding an item
                  pointsController.clear();
                  digitController.clear();
                });
              },
              child: Text('Add Item'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: itemList.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(itemList[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          setState(() {
                            itemList.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
