class ParentCategory {
  int? key;
  String? title;

  ParentCategory({this.key, this.title});

  factory ParentCategory.fromJson(Map<String, dynamic> json) {
    return ParentCategory(
      key: json['key'] as int?,
      title: json['title'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
