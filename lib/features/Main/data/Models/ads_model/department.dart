class Department {
  int? key;
  String? title;

  Department({this.key, this.title});

  factory Department.fromJson(Map<String, dynamic> json) => Department(
        key: json['key'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
