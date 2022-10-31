import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionNumberIndex extends StatelessWidget {
  int questionNumber;

  QuestionNumberIndex({
    Key? key, required this.questionNumber
  }) : super(key: key);
  // int questionNumber;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        // left: 35,
        right: 280,
        top: 7,
      ),
      child: Container(
        width: 68,
        height: 35.08,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(
                  1,
                  5.0,
                ),
                blurRadius: 1.5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(2, 1),
                blurRadius: 0,
                spreadRadius: 0,
              )
            ]
            //
            ),
        child: Center(
            child: Text(
          '$questionNumber / 10',
          style: GoogleFonts.mulish(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            // wordSpacing: -0.3,
            letterSpacing: -0.3,
          ),
        )),
      ),
    );
  }
}
