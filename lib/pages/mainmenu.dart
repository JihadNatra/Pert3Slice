import 'package:google_fonts/google_fonts.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/framework.dart';
// ignore: implementation_imports, unnecessary_import
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class MainMenuPages extends StatelessWidget {
  const MainMenuPages({super.key});

  @override
  Widget build(BuildContext context) {
    Widget gamesCard(
      String img,
      String name,
      String genre,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Color.fromARGB(255, 20, 20, 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(img
                          // "assets/img_profile.png",

                          ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.vollkornSc(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        genre,
                        style: GoogleFonts.vollkornSc(
                          fontSize: 14,
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/ic-star.png",
                                ))),
                      ),
                      Text(
                        '4.8',
                        style: GoogleFonts.vollkornSc(
                          fontSize: 16,
                          color: const Color(0xff308CF8),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello, \nJihad Natra',
                          style: GoogleFonts.vollkornSc(
                            fontSize: 24,
                            color: Color(0xff9698A9),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'EID : 1207070061',
                          style: GoogleFonts.vollkornSc(
                            fontSize: 14,
                            color: const Color(0xff9698A9),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 76,
                      height: 76,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img_profile.png",
                              ))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                gamesCard("assets/NFSH.jpg", "Need For Speed: Heat", "Race"),
                gamesCard("assets/SOT.jpg", "Sea Of Thieves", "Adventure"),
                gamesCard(
                    "assets/SOTF.jpg", "Son Of The Forest", "Survival Horor"),
                gamesCard("assets/WWZ.jpg", "World War Z", "Survival Horor"),
              ],
            ),
          ),
        ),
      ),
    );
    return const Placeholder();
  }
}
