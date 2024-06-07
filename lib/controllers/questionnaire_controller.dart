import 'dart:ui';

import 'package:get/get.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_five.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_four.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_one.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_three.dart';
import 'package:measure_app/ui/questionnaire/questionnaire_two.dart';

class QuestionnaireController extends GetxController {
  var currentIndex = 0.obs;

  var fingersCheck = true.obs;

  var assessmentTwoItems =
      ["Jill bought candies", "Jill has a dog as pet", "Jill took a cab"].obs;

  var animalLists = ["Chicken", "Horse", "Dog"];

  var selectedAssements = <String>[].obs;

  var selectedAnimals = <String>[].obs;

  final List<ChartData> chartData = [
    ChartData('David', 25, Color.fromRGBO(9, 0, 136, 1)),
    ChartData('Steve', 75, Color.fromRGBO(147, 0, 119, 1)),
  ];

  var answers = 5.obs;

  questionnaireComponent() {
    switch (currentIndex.value) {
      case 0:
        return QuestionnaireOne();
      case 1:
        return QuestionnaireTwo();
      case 2:
        return QuestionnaireThree();
      case 3:
        return QuestionnaireFour();
      case 4:
        return QuestionnaireFive();
    }
  }

  void updateAssessmentIndex(int i) {
    currentIndex.value = i;
  }

  void updateFingersData(bool check) {
    fingersCheck.value = check;
  }

  void updateAssmentTwoIndex(String item) {
    if (!selectedAssements.contains(item)) {
      selectedAssements.add(item);
    } else {
      selectedAssements.remove(item);
    }
  }

  void updateSwitchData(String item) {
    if (!selectedAnimals.contains(item)) {
      selectedAnimals.add(item);
    } else {
      selectedAnimals.remove(item);
    }
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
