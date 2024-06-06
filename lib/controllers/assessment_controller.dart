import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssessmentController extends GetxController {
  var patientEditingController = TextEditingController().obs;
  var cognitiveStatus = "".obs;
  var applicableMeasures = "".obs;
  var nameValue = "".obs;

  List<String> names = ["A", "B", "C", "D", "E", "F"];

  void onCognitiveStatusChanged(String status) {
    cognitiveStatus.value = status;
  }

  void onApplicableMeasuresChanges(String measures) {
    applicableMeasures.value = measures;
  }

  void updateInput(var data) {
    nameValue.value = data;
  }
}
