import 'package:flutter/material.dart';
import 'package:responsive_app/const/colors.dart';
import 'package:responsive_app/const/poke_type_container..dart';
import 'package:responsive_app/const/row_styling.dart';
import 'package:responsive_app/const/stat_row.dart';
import 'package:responsive_app/const/text_style.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
//-----------------------------------------------------------------------------------------------------------------
//-----------------------------------------------------------------------------------------------------------------
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        backgroundColor: Colors.red,
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    headingText(
                        color: Colors.white, size: 36, text: "Bulbasaur"),
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
                          Image.asset(
                            "assets/img1.png",
                            width: 180,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    const TabBar(
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        Tab(text: "About"),
                        Tab(text: "Base Stats"),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10),
                              normalText(
                                  color: Colors.black,
                                  size: 16,
                                  text:
                                      "It can be  seen napping in the jungle having a seed on its back."),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: width -
                                      100, // this give us screenwidth-50%
                                  child: Card(
                                    color: lightGrey,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Column(
                                            children: [
                                              headingText(
                                                  color: Colors.grey,
                                                  size: 16,
                                                  text: "Height"),
                                              const SizedBox(height: 6),
                                              headingText(
                                                  color: Colors.grey,
                                                  size: 16,
                                                  text: "15ft"),
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              headingText(
                                                  color: Colors.grey,
                                                  size: 16,
                                                  text: "Weight"),
                                              const SizedBox(height: 6),
                                              headingText(
                                                  color: Colors.grey,
                                                  size: 16,
                                                  text: "15lbs"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              headingText(
                                  color: Colors.black,
                                  size: 16,
                                  text: "Breeding"),
                              const SizedBox(height: 10),
                              rowStyling("Gender", "Male"),
                              rowStyling("Egg Cycle", "Grass, Monster"),
                              rowStyling("Evolution", "Grass, Monster"),
                            ],
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Column(
                              children: [
                                const SizedBox(height: 15),
                                statRow(text: "HP", value: "20"),
                                statRow(text: "Attack", value: "70"),
                                statRow(text: "Defense", value: "40"),
                                statRow(text: "Evolution", value: "90"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
