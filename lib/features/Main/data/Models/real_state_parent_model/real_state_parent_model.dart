import 'datum.dart';

class RealStateParentModel {
  List<RealStateParentData>? data;

  RealStateParentModel({this.data});

  factory RealStateParentModel.fromJson(Map<String, dynamic> json) {
    return RealStateParentModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => RealStateParentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
