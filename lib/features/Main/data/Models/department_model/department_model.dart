import 'package:ardwtalab/features/Main/data/Models/department_model/datum.dart';

class DepartmentModel {
  List<Data>? data;

  DepartmentModel({this.data});

  factory DepartmentModel.fromJson(Map<String, dynamic> json) {
    return DepartmentModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
