import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pert3slice/pages/mainmenu.dart';

class Halaman1 extends StatelessWidget {
  const Halaman1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(242, 0, 0, 0),
      body: Stack(children: [
        Center(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 192, horizontal: 72),
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
              "assets/alienicon.png",
            ))),
          ),
        ),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 85,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Eniverse',
                      style: GoogleFonts.vastShadow(
                        fontSize: 35,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Easy Way To Download Games',
                  style: GoogleFonts.vastShadow(
                    fontSize: 16,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 300,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'Game \nDownloader',
                      style: GoogleFonts.vollkornSc(
                        fontSize: 24,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MainMenuPages()),
                  );
                },
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 80),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 45, vertical: 15),
                    decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                      child: Text(
                        'Start',
                        style: GoogleFonts.vastShadow(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
