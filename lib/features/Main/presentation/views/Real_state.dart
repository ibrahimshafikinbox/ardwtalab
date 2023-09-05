import 'package:ardwtalab/features/Main/Cubit/home_ads/home_Ads_Cubit.dart';
import 'package:ardwtalab/features/Main/Cubit/home_ads/home_ads_state.dart';
import 'package:ardwtalab/features/Main/data/Models/ads_model/ads_model.dart';
import 'package:ardwtalab/features/Main/data/Models/ads_model/datum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RealEstateView extends StatefulWidget {
  const RealEstateView({super.key});

  @override
  State<RealEstateView> createState() => _RealEstateViewState();
}

class _RealEstateViewState extends State<RealEstateView> {
  @override
  void initState() {
    super.initState();
    print("Screen opened ");
    HomeAdsCubit.get(context).getHomeAds();
    print(HomeAdsCubit.get(context).adsmodel!.data!.length);
  }

  @override
  Widget build(BuildContext context) {
    var adscubit = HomeAdsCubit.get(context);
    AdsModel? adsModel;
    Datum? datum;
    return BlocProvider(
      create: (context) => HomeAdsCubit(),
      child: BlocConsumer<HomeAdsCubit, HomeAdsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ListView.builder(
            itemCount: adscubit.adsmodel!.data!.length,
            itemBuilder: (BuildContext context, int index) {
              Datum datum = adscubit.adsmodel!.data![index];

              // Return a widget that represents the data for each item
              return ListTile(
                title: Text(datum.title ?? "empty"),
                subtitle: Text(datum.city!.name ?? 'empty'),

                // Customize the widget as needed
              );
            },
          );
        },
      ),
    );
  }
}
