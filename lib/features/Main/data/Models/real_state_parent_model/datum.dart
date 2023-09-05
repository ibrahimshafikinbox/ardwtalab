class RealStateParentData {
  int? key;
  String? title;

  RealStateParentData({this.key, this.title});

  factory RealStateParentData.fromJson(Map<String, dynamic> json) =>
      RealStateParentData(
        key: json['key'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
