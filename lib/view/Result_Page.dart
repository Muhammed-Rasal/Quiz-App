import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:quizapp2/controller/provider.dart';

import 'Home_Screen.dart';

class ResultPage extends StatelessWidget {
  ResultPage({super.key, required this.marksEarnedFromQuiz});

  int marksEarnedFromQuiz = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final shouldPop = await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              insetPadding: EdgeInsets.zero,
              contentTextStyle: GoogleFonts.mulish(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: const Text('Quit Quiz?'),
              content: const Text(
                'Are you sure you want exit!',
                textAlign: TextAlign.left,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              //actionsAlignment: MainAxisAlignment.spaceBetween,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => exit(0)));
                    // Navigator.pop(context, true);
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(color: Colors.red
                        //  backgroundColor: Colors.red
                        ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: const Text('No'),
                ),
              ],
            );
          },
        );
        return shouldPop!;
      },
      child: Consumer<ChangeIndex>(builder: (context, Provider, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: marksEarnedFromQuiz > 4
                ? IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                                insetPadding: EdgeInsets.zero,
                                contentTextStyle: GoogleFonts.mulish(),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                title: const Text(
                                  'Back to home?',
                                ),
                                content: const Text(
                                  'Are you sure want to\nrestart the quiz',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: const Text(
                                      'NO',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(66, 130, 241, 1)),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen())),
                                    child: const Text(
                                      'YES',
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(66, 130, 241, 1)),
                                    ),
                                  ),
                                ],
                              ));
                      // Navigator.pop(context);
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => HomeScreen()));
                    },
                  )
                : SizedBox(),
            centerTitle: true,
            title: Text(
              'Result',
              style: GoogleFonts.mulish(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.3,
                fontSize: 20,
              ),
            ),
            elevation: 0,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 149.33,
                      height: 149.33,
                      //color: Colors.red,
                      child: CircularPercentIndicator(
                        backgroundColor: Color.fromRGBO(230, 230, 230, 1),
                        animation: true,
                        radius: 70,
                        lineWidth: 13.0,
                        percent: marksEarnedFromQuiz / 10,
                        animationDuration: 1000,
                        reverse: true,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: new Text(
                          "$marksEarnedFromQuiz/10",
                          style: GoogleFonts.mulish(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.3,
                            fontSize: 15,
                          ),
                        ),
                        progressColor: marksEarnedFromQuiz > 4
                            ? Color.fromRGBO(82, 186, 0, 1)
                            : Color.fromRGBO(254, 123, 30, 1),
                      )),
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      marksEarnedFromQuiz < 5
                          ? Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(254, 123, 30, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                'Ooops...!',
                                style: GoogleFonts.mulish(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.3,
                                  fontSize: 15,
                                ),
                              )),
                            )
                          : Container(
                              width: 150,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(82, 186, 0, 1),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                'Awesome!',
                                style: GoogleFonts.mulish(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: -0.3,
                                  fontSize: 15,
                                ),
                              )),
                            ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      marksEarnedFromQuiz < 5
                          ? Padding(
                              padding: const EdgeInsets.only(
                                top: 23,
                              ),
                              child: Container(
                                width: 160,
                                height: 37,
                                color: Colors.white,
                                child: InkWell(
                                  onTap: () {
                                    //Provider.restartIndexForQuestion();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScreen()));
                                  },
                                  child: Text(
                                    'Try Again',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                      decoration: TextDecoration.underline,
                                      color: Color.fromRGBO(66, 130, 241, 1),
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.3,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                top: 23,
                              ),
                              child: Container(
                                width: 160,
                                height: 60,
                                color: Colors.white,
                                child: Text(
                                  'Congratulations\n You Passed the exam',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.3,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
                    ],
                  )
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
