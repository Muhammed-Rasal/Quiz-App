import 'package:flutter/cupertino.dart';

class IndexController extends ChangeNotifier {
  int currentQuestionIndex = 1;
  List<int> selectedOptionList = [0, 1, 2, 3, 4];
  int optionSelected = 0;

  void updateIndexForQuestion() {
    currentQuestionIndex++;
    notifyListeners();
  }

  void selectedOptionIndex(int optionIndex) {
    optionSelected = selectedOptionList[optionIndex];
    notifyListeners();
  }

  void restartIndexForQuestion() {
    currentQuestionIndex = 1;
  }
}
