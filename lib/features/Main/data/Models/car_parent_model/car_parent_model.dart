import 'package:ardwtalab/features/Main/data/Models/car_parent_model/datum.dart';

class CarParentModel {
  List<CarParentData>? data;

  CarParentModel({this.data});

  factory CarParentModel.fromJson(Map<String, dynamic> json) {
    return CarParentModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CarParentData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
