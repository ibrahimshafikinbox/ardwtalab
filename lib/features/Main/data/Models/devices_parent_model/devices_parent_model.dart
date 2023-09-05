import 'devices_data.dart';

class DevicesParentModel {
  List<DevicesData>? data;

  DevicesParentModel({this.data});

  factory DevicesParentModel.fromJson(Map<String, dynamic> json) {
    return DevicesParentModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DevicesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };
}
