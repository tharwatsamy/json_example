import 'package:jsonexample/services/subject_service.dart';

class Student {
  String name;
  String id;
  int score;
  List<String> subjects;
  Subject subject;
  List<Subject> allSubjects;
  Student(
      {this.name,
      this.score,
      this.id,
      this.subjects,
      this.subject,
      this.allSubjects});

  factory Student.fromJson(Map<String, dynamic> parsedJson) {
    return Student(
        name: parsedJson['name'],
        score: parsedJson['score'],
        id: parsedJson['id'],
        subjects: toList(parsedJson['subjects']),
        subject: Subject.fromJson(parsedJson['subject']),
        allSubjects: toListOfSubject(parsedJson['allSubject']));
  }

  @override
  String toString() {
    return 'name =$name score = $score id =$id  subjects = $subjects, subject = ${subject.toString()} allSubjects=$allSubjects';
  }

  static List<String> toList(List<dynamic> list) {
    return List<String>.from(list);
  }

  static List<Subject> toListOfSubject(List<dynamic> list) {
    List<Subject> subjectsList = list.map((e) => Subject.fromJson(e)).toList();
    return subjectsList;
  }
}
