import 'package:flutter/material.dart';
import 'package:responsive_app/const/text_style.dart';

Widget rowStyling(String? text, String? value) {
  return Row(
    children: [
      SizedBox(
        width: 100,
        child: headingText(color: Colors.grey, size: 16, text: text),
      ),
      headingText(color: Colors.grey, size: 16, text: value),
    ],
  );
}
