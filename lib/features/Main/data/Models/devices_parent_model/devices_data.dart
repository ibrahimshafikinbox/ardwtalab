class DevicesData {
  int? key;
  String? title;

  DevicesData({this.key, this.title});

  factory DevicesData.fromJson(Map<String, dynamic> json) => DevicesData(
        key: json['key'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
