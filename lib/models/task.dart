class Task {
  final int? id;
  final String title;
  final String description;
  final String subject;

  Task({this.id, required this.title, required this.description, required this.subject});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'subject': subject,
    };
  }

  static Task fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      subject: map['subject'],
    );
  }
}