import 'package:ardwtalab/features/Main/data/Models/vans_parent_model/VansData.dart';

class VansParentModel {
  List<VansData>? data;

  VansParentModel({this.data});

  factory VansParentModel.fromJson(Map<String, dynamic> json) {
    return VansParentModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VansData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
