class Data {
  int? key;
  String? title;

  Data({this.key, this.title});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        key: json['key'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
