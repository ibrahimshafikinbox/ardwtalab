class Region {
  int? key;
  String? name;

  Region({this.key, this.name});

  factory Region.fromJson(Map<String, dynamic> json) => Region(
        key: json['key'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'name': name,
      };
}
