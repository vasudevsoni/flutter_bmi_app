import 'main_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_container.dart';

class ResultPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ResultPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 15.0,
              ),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFffd237),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        size: 20.0,
                      ),
                      color: Colors.black,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Result',
                    style: GoogleFonts.openSans(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w900,
                      color: const Color(0xFFffd237),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                colour: activeCardColour,
                cardChild: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bmiResult,
                        style: GoogleFonts.openSans(
                          fontSize: 75.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              color: Colors.black.withOpacity(0.3),
                              offset: const Offset(7, 7),
                              blurRadius: 18,
                            )
                          ],
                        ),
                      ),
                      Text(
                        resultText,
                        style: GoogleFonts.openSans(
                          fontSize: 27.0,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Normal BMI range:',
                            style: GoogleFonts.openSans(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '18 - 24.9 kg/m²',
                            style: GoogleFonts.openSans(
                              fontSize: 23.0,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xFFffd237),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFffd237),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          interpretation,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.openSans(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                onPress: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
