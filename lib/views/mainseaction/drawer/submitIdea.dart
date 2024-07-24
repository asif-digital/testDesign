import 'package:flutter/material.dart';
import 'package:sara_plus/global/colors.dart';
import 'package:sara_plus/global/widgets.dart';

class SubmitIdea extends StatefulWidget {
  const SubmitIdea({super.key});

  @override
  State<SubmitIdea> createState() => _SubmitIdeaState();
}

class _SubmitIdeaState extends State<SubmitIdea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar(title: "Your Idea"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              round(
                  widget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle: TextStyle(fontSize: 12),
                            hintText: "Submit Your Thoughts"),
                        maxLines: 50,
                      ),
                    ),
                  ),
                  radius: 10,
                  color: white,
                  h: 150,
                  w: double.infinity),
              h(h: 200),
              button(
                  name: "Submint",
                  height: 50,
                  color: lev_one,
                  width: double.infinity)
            ],
          ),
        ),
      ),
    );
  }
}
