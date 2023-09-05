import 'package:ardwtalab/core/network_constants/constants.dart';
import 'package:ardwtalab/features/Main/Cubit/home_ads/home_ads_state.dart';
import 'package:ardwtalab/features/Main/data/Models/ads_model/ads_model.dart';
import 'package:ardwtalab/features/Main/data/Models/ads_model/datum.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAdsCubit extends Cubit<HomeAdsState> {
  final Dio dio = Dio();
  AdsModel? adsmodel;
  Datum? datummodel;

  HomeAdsCubit() : super(HomeAdsInitial());
  static HomeAdsCubit get(context) => BlocProvider.of(context);
  Future<void> getHomeAds() async {
    emit(HomeAdsLoading());
    await dio.get('${Constants.baseUrl}${Constants.homeAds}').then((value) {
      print(" data ${value.data}");
      adsmodel = AdsModel.fromJson(value.data);
      datummodel = Datum.fromJson(value.data);
      emit(HomeAdsSuccess());
      // Datum datum = adsmodel.data![index]; // Get the current `Datum` object

      // print(adsmodel.data!.first.city!.name);
      print(adsmodel!.data!.length);
      print(adsmodel!.data);
    }).catchError((e) {
      print(
        e.toString(),
      );
    });
  }
}
