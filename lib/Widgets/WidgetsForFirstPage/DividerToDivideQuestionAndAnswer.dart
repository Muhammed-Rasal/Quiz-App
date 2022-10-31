import 'package:flutter/material.dart';

class DividerToDivideQuestionAndAnswer extends StatelessWidget {
  const DividerToDivideQuestionAndAnswer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, right: 10, top: 12),
      child: Divider(
        thickness: 1.2,
      ),
    );
  }
}