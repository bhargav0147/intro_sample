import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              SizedBox(height: 50),
              Expanded(
                child: IntroductionScreen(
                  done: ElevatedButton(
                    child: Center(
                      child: Text("Done"),
                    ),
                    onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  ),
                  onDone: () {},
                  showNextButton: true,
                  showDoneButton: true,
                  next: ElevatedButton(
                    onPressed: () {},style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                    child: Text("Next"),
                  ),
                  pages: [
                    PageViewModel(
                      titleWidget: Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 1,
                        ),
                      ),
                      image: Image.asset("assets/images/1.png"),
                      bodyWidget: Text(
                        "You can go anywhare from here.",
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    PageViewModel(
                      image: Image.asset("assets/images/2.png"),
                      titleWidget: Text(
                        "Plan Your Trip",
                        style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 1,
                        ),
                      ),
                      bodyWidget: Text(
                        "Plan where you wantto go with ease.",
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                    PageViewModel(
                      image: Image.asset("assets/images/3.png"),
                      titleWidget: Text(
                        "Book With Ease",
                        style: TextStyle(
                          fontSize: 40,
                          letterSpacing: 1,
                        ),
                      ),
                      bodyWidget: Text(
                        "Save your timefor other important things.",
                        style: TextStyle(
                          fontSize: 30,
                          letterSpacing: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
