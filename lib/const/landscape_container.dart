import 'package:flutter/material.dart';
import '../const/poke_type_container..dart';
import '../const/text_style.dart';

Widget landscapeContainer() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          headingText(color: Colors.white, size: 36, text: "Bulbasaur"),
          Row(
            children: [
              typeContainer(
                color: Colors.white,
                size: 16,
                text: "Grass",
              ),
              const SizedBox(width: 6),
              typeContainer(
                color: Colors.white,
                size: 16,
                text: "Grass",
              ),
            ],
          ),
          const SizedBox(height: 50),
        ],
      ),
      Align(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Image.asset(
              "assets/pokeball.png",
              width: 200,
              color: Colors.white.withOpacity(0.5),
            ),
            Image.asset(
              "assets/img1.png",
              width: 180,
            ),
          ],
        ),
      ),
    ],
  );
}