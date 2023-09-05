class Customer {
  int? key;
  int? id;
  String? status;
  String? sharingLink;
  bool? isFollowing;
  int? rating;
  String? name;
  dynamic email;
  String? avatar;
  String? firstName;
  dynamic lastName;
  String? mobile;
  DateTime? createdAt;

  Customer({
    this.key,
    this.id,
    this.status,
    this.sharingLink,
    this.isFollowing,
    this.rating,
    this.name,
    this.email,
    this.avatar,
    this.firstName,
    this.lastName,
    this.mobile,
    this.createdAt,
  });

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        key: json['key'] as int?,
        id: json['id'] as int?,
        status: json['status'] as String?,
        sharingLink: json['sharing_link'] as String?,
        isFollowing: json['is_following'] as bool?,
        rating: json['rating'] as int?,
        name: json['name'] as String?,
        email: json['email'] as dynamic,
        avatar: json['avatar'] as String?,
        firstName: json['first_name'] as String?,
        lastName: json['last_name'] as dynamic,
        mobile: json['mobile'] as String?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'id': id,
        'status': status,
        'sharing_link': sharingLink,
        'is_following': isFollowing,
        'rating': rating,
        'name': name,
        'email': email,
        'avatar': avatar,
        'first_name': firstName,
        'last_name': lastName,
        'mobile': mobile,
        'created_at': createdAt?.toIso8601String(),
      };
}
