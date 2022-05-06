import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'my_container.dart';
import 'result_page.dart';
import 'calculator_brain.dart';

const activeCardColour = Color(0xff5a5a5a);

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 170;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
                top: 15.0,
              ),
              child: Text(
                'BMI Calculator',
                style: GoogleFonts.openSans(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w900,
                  color: const Color(0xFFffd237),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: Text(
                'Fast & Simple',
                style: GoogleFonts.openSans(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFFffd237),
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                onPress: () {},
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Height',
                          style: GoogleFonts.openSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 15.0,
                          ),
                        ),
                        Row(
                          textBaseline: TextBaseline.alphabetic,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          children: [
                            Text(
                              height.toString(),
                              style: GoogleFonts.openSans(
                                fontSize: 40,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFFffd237),
                              ),
                            ),
                            const SizedBox(
                              width: 3.0,
                            ),
                            Text(
                              'cm',
                              style: GoogleFonts.openSans(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFFffd237),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: Colors.white,
                        activeTrackColor: const Color(0xFFffd237),
                        inactiveTrackColor: Colors.grey,
                        overlayColor: Colors.white54,
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 12.0,
                        ),
                        overlayShape: const RoundSliderOverlayShape(
                          overlayRadius: 20.0,
                        ),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                        min: 40.0,
                        max: 220.0,
                      ),
                    ),
                  ],
                ),
                colour: activeCardColour,
              ),
            ),
            Expanded(
              child: MyContainer(
                onPress: () {},
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Age',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                      ),
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          age.toString(),
                          style: GoogleFonts.openSans(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFFffd237),
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'yrs',
                          style: GoogleFonts.openSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFffd237),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.minus,
                              size: 20.0,
                            ),
                            color: const Color(0xff5a5a5a),
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.plus,
                              size: 20.0,
                            ),
                            color: const Color(0xff5a5a5a),
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                colour: activeCardColour,
              ),
            ),
            Expanded(
              child: MyContainer(
                onPress: () {},
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Weight',
                      style: GoogleFonts.openSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.0,
                      ),
                    ),
                    Row(
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          weight.toString(),
                          style: GoogleFonts.openSans(
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color: const Color(0xFFffd237),
                          ),
                        ),
                        const SizedBox(
                          width: 3.0,
                        ),
                        Text(
                          'kg',
                          style: GoogleFonts.openSans(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFFffd237),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.minus,
                              size: 20.0,
                            ),
                            color: const Color(0xff5a5a5a),
                            onPressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.plus,
                              size: 20.0,
                            ),
                            color: const Color(0xff5a5a5a),
                            onPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                colour: activeCardColour,
              ),
            ),
            GestureDetector(
              onTap: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: height, weight: weight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ResultPage(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      );
                    },
                  ),
                );
              },
              child: Container(
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: GoogleFonts.openSans(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ),
                height: 70.0,
                margin: const EdgeInsets.all(15.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color(0xFFffd23f),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
