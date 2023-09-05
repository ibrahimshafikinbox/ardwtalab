class City {
  int? key;
  String? name;

  City({this.key, this.name});

  factory City.fromJson(Map<String, dynamic> json) => City(
        key: json['key'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'name': name,
      };
}
