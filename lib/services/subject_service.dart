class Subject {
  int score;
  String id;

  Subject({this.id, this.score});

  factory Subject.fromJson(Map<String, dynamic> parsedJson) {
    return Subject(id: parsedJson['id'], score: parsedJson['score']);
  }

  @override
  String toString() {
    return 'id =$id score =$score';
  }
}
