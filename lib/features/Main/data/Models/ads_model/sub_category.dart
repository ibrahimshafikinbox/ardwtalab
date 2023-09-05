class SubCategory {
  int? key;
  String? title;

  SubCategory({this.key, this.title});

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
        key: json['key'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
