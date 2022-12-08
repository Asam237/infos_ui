import 'package:flutter/material.dart';
import 'package:infos_app/views/components/my_text.component.dart';

Widget header(BuildContext context, String title, double line) {
  return Align(
    alignment: Alignment.center,
    child: Container(
        width: 250,
        padding: EdgeInsets.all(4.0),
        child: Column(
          children: [
            MyText(text: title, centered: true, variant: "MENU",),
            SizedBox(height: 4,),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: line,
                height: 2,
                color: Color(0xff263346),
              ),
            ),
          ],
        )),
  );
}
