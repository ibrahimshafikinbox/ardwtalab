import 'datum.dart';
import 'links.dart';
import 'meta.dart';

class AdsModel {
  List<Datum>? data;
  Links? links;
  Meta? meta;

  AdsModel({this.data, this.links, this.meta});

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
        links: json['links'] == null
            ? null
            : Links.fromJson(json['links'] as Map<String, dynamic>),
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
        'links': links?.toJson(),
        'meta': meta?.toJson(),
      };
}
