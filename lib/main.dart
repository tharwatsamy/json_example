import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jsonexample/services/student_service.dart';

void main() {
  runApp(JsonExample());
}

class JsonExample extends StatelessWidget {
  Future<String> _loadAsset() async {
    return await rootBundle.loadString('assets/file.json');
  }

  Future<void> _loadData() async {
    String jsonString = await _loadAsset();
    var parsedJson = jsonDecode(jsonString);
    Student student = Student.fromJson(parsedJson);
    print(student.toString());
  }

  @override
  Widget build(BuildContext context) {
    _loadData();
    return Container();
  }
}
