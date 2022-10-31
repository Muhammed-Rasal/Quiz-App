import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ChooseAnAnswerBox extends StatelessWidget {
  const ChooseAnAnswerBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: SizedBox(
        height: 23,
        width: 150,
        //color: Colors.amber,
        child: Text(
          'Choose an answer',
          textAlign: TextAlign.center,
          style: GoogleFonts.mulish(
            fontSize: 15,
            color: const Color.fromRGBO(101, 99, 99, 1),
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}


