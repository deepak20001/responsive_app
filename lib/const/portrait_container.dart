import 'package:flutter/material.dart';
import '../const/poke_type_container..dart';
import '../const/text_style.dart';

Widget portraitConatiner(data) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      headingText(color: Colors.white, size: 36, text: data["name"]),
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
            Image.network(
              data["imageurl"],
              width: 180,
            ),
          ],
        ),
      ),
    ],
  );
}
