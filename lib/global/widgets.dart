import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

toScreen({required BuildContext context, required Widget page}) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

removeUntil({required BuildContext context, required Widget page}) {
  Navigator.pushAndRemoveUntil(
      context, MaterialPageRoute(builder: (context) => page), (route) => false);
}

Widget round(
    {required Widget widget,
    required double radius,
    required Color color,
    required double h,
    required double w}) {
  return Container(
    height: h,
    width: w,
    child: widget,
    decoration: BoxDecoration(
        color: color, borderRadius: BorderRadius.circular(radius)),
  );
}

Widget h({required double h}) {
  return SizedBox(
    height: h,
  );
}

Widget w({required double w}) {
  return SizedBox(
    width: w,
  );
}

PreferredSizeWidget topBar({
  required String title,
}) {
  return AppBar(
    title: semi(size: 16, text: title),
    centerTitle: true,
    elevation: 1,
    backgroundColor: white,
    iconTheme: IconThemeData(color: black),
    // leading: IconButton(onPressed: (), icon: icon),
  );
}

semi({required String text, required double size, Color color = Colors.black}) {
  return Text(
    text,
    style: TextStyle(fontFamily: "PopS", fontSize: size, color: color),
  );
}

mdm({required String text, required double size, Color color = Colors.black}) {
  return Text(
    text,
    style: TextStyle(fontFamily: "PopM", fontSize: size, color: color),
  );
}

rglr({required String text, required double size, Color color = Colors.black}) {
  return Text(
    text,
    style: TextStyle(fontFamily: "PopR", fontSize: size, color: color),
  );
}

bld({required String text, required double size, Color color = Colors.black}) {
  return Text(
    text,
    style: TextStyle(fontFamily: "PopB", fontSize: size, color: color),
  );
}

Widget button(
    {required String name,
    required double height,
    required Color color,
    required double width,
    double radius = 0}) {
  return Container(
    alignment: Alignment.center,
    width: width,
    height: height,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius), color: color),
    child: Text(
      name,
      style: TextStyle(fontFamily: "PopM", fontSize: 16, color: black),
    ),
  );
}

dp({required String msg}) {
  return msg;
}

Widget txf_ctrl({required TextEditingController controller}) {
  return Container(
    alignment: Alignment.center,
    height: 50,
    decoration: BoxDecoration(
        color: lev_three,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: lev_three, width: 1)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.phone,
        style: TextStyle(
          height: 25 / 16,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    ),
  );
}

Widget plainBtn(
    {required String name,
    required double h,
    required double w,
    double radius = 10}) {
  return Container(
    alignment: Alignment.center,
    height: h,
    width: w,
    decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(width: 1, color: Colors.grey.withOpacity(0.4))),
    child: semi(text: name, color: black, size: 12),
  );
}

Widget head({required String one, required String two}) {
  return Container(
    height: 80,
    width: double.infinity,
    child: Row(
      children: [
        Container(
          width: 13,
          color: lev_one,
        ),
        w(w: 10),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            bld(text: one, size: 25),
            bld(text: two, size: 25),
          ],
        )
      ],
    ),
  );
}

text_feild(
    {required IconData icon,
    required String hint,
    required bool number,
    required TextEditingController contrl}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50), color: lev_three),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          round(
              widget: Icon(
                icon,
                color: Colors.white.withOpacity(0.9),
              ),
              radius: 50,
              color: lev_one,
              h: 45,
              w: 45),
          w(w: 20),
          Expanded(
            child: TextField(
              inputFormatters: [
                number
                    ? LengthLimitingTextInputFormatter(10)
                    : LengthLimitingTextInputFormatter(50),
              ],
              controller: contrl,
              cursorColor: Color(0xffFAB029),
              style: TextStyle(
                  fontFamily: "PopM", fontSize: 16 // Change text color here
                  ),
              keyboardType: number ? TextInputType.phone : TextInputType.name,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: TextStyle(color: lev_two)),
            ),
          )
        ],
      ),
    ),
  );
}
