import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});

  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(title: "Choose Your Language"),
      body: Column(
        children: [
          Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              title: mdm(text: "English", size: 13),
              subtitle: rglr(text: "English", size: 12, color: lev_one),
              onTap: () {
                toScreen(context: context, page: ShowVideo());
              },
            ),
          ),
          Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              title: mdm(text: "'Français'", size: 13),
              subtitle: rglr(text: "French", size: 12, color: lev_one),
              onTap: () {
                // Handle the selection if needed
                toScreen(context: context, page: ShowVideo());
              },
            ),
          ),
          Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              title: mdm(text: "हिन्दी", size: 13),
              subtitle: rglr(text: "Hindi", size: 12, color: lev_one),
              onTap: () {
                // Handle the selection if needed
                toScreen(context: context, page: ShowVideo());
              },
            ),
          ),
          Card(
            child: ListTile(
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              title: mdm(text: "Español", size: 13),
              subtitle: rglr(text: "Spanish", size: 12, color: lev_one),
              onTap: () {
                // Handle the selection if needed
                toScreen(context: context, page: ShowVideo());
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ShowVideo extends StatefulWidget {
  ShowVideo({super.key});

  @override
  State<ShowVideo> createState() => _ShowVideoState();
}

class _ShowVideoState extends State<ShowVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: topBar(title: "Video"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("assets/images/noVid.png"),
            ),
            h(h: 20),
            mdm(text: "No Vidoes to Show", size: 15)
          ],
        ),
      ),
    );
  }
}
