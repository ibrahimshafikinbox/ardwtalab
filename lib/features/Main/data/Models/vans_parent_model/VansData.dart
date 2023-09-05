class VansData {
  int? key;
  String? title;

  VansData({this.key, this.title});

  factory VansData.fromJson(Map<String, dynamic> json) => VansData(
        key: json['key'] as int?,
        title: json['title'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'title': title,
      };
}
