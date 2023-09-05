class CarParentData {
  int? key;
  String? title;

  CarParentData({this.key, this.title});

  factory CarParentData.fromJson(Map<String, dynamic> json) => CarParentData(
        key: json['key'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
