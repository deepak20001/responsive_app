import 'package:flutter/material.dart';
import 'package:responsive_app/const/poke_type_container..dart';
import 'package:responsive_app/details_screen.dart';
import './const/text_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Demo(),
      theme: ThemeData(fontFamily: "circula"),
    );
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                "PokeApp",
                style: TextStyle(fontFamily: "circula_bold", fontSize: 36),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: GridView.builder(
                  //added bouncingeffect on scroll
                  physics: const BouncingScrollPhysics(),
                  //-------------------------------------
                  shrinkWrap: true,
                  itemCount: 10,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DetailsScreen(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              bottom: -20,
                              right: -20,
                              child: Image.asset(
                                "assets/pokeball.png",
                                width: 150,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: Image.asset(
                                "assets/img1.png",
                                width: 150,
                              ),
                            ),
                            Positioned(
                              top: 20,
                              left: 10,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  headingText(
                                    color: Colors.white,
                                    size: 24,
                                    text: "Bulbasaur",
                                  ),
                                  typeContainer(
                                    color: Colors.white,
                                    size: 16,
                                    text: "Grass",
                                  ),
                                  const SizedBox(height: 6),
                                  typeContainer(
                                    color: Colors.white,
                                    size: 16,
                                    text: "Poison",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
