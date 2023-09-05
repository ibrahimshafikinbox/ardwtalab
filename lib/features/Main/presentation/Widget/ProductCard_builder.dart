// import 'package:ardwtalab/features/resources/styles/app_sized_box.dart';
// import 'package:flutter/material.dart';

// class Custom_Car_Item extends StatefulWidget {
//   const Custom_Car_Item({super.key});

//   @override
//   State<Custom_Car_Item> createState() => _Custom_Car_ItemState();
// }

// class _Custom_Car_ItemState extends State<Custom_Car_Item> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Row(
//         children: [
//           Container(
//             width: 150.0,
//             height: 100.0,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 image: DecorationImage(
//                   image: AssetImage("assets/Images/nissan.jpg"),
//                   fit: BoxFit.cover,
//                 )),
//           ),
//           AppSizedBox.sizedW20,
//           Expanded(
//             child: Container(
//               height: 120.0,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Text(
//                     'touya campry le standerd',
//                     style: Theme.of(context).textTheme.bodyText1,
//                     maxLines: 3,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                   AppSizedBox.sizedH10,
//                   Row(
//                     children: const [
//                       Icon(Icons.person),
//                       AppSizedBox.sizedW5,
//                       Text("ard w talab  "),
//                     ],
//                   ),
//                   Row(
//                     children: const [
//                       Icon(Icons.location_on),
//                       AppSizedBox.sizedW5,
//                       Text("Elryad "),
//                     ],
//                   ),
//                   Row(
//                     children: const [
//                       Icon(Icons.timer),
//                       AppSizedBox.sizedW5,
//                       Text("from 3 week "),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class CarItemListView extends StatelessWidget {
//   const CarItemListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemBuilder: (context, IndexError) {
//         return Custom_Car_Item();
//       },
//       itemCount: 10,
//     );
//   }
// }

import 'package:ardwtalab/features/Main/Cubit/home_ads/home_Ads_Cubit.dart';
import 'package:ardwtalab/features/Main/Cubit/home_ads/home_ads_state.dart';
import 'package:ardwtalab/features/resources/styles/app_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/Models/ads_model/ads_model.dart';
import '../../data/Models/ads_model/datum.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({super.key});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  void initState() {
    super.initState();
    print("Screen opened ");
    HomeAdsCubit.get(context).getHomeAds();
    print(HomeAdsCubit.get(context).adsmodel?.data!.length);
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
            itemCount: adscubit.adsmodel?.data!.length,
            itemBuilder: (BuildContext context, int index) {
              Datum datum = adscubit.adsmodel!.data![index];

              // Return a widget that represents the data for each item
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                  elevation: 1,
                  child: Row(
                    children: [
                      Container(
                        width: 150.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            image: const DecorationImage(
                              image: AssetImage("assets/Images/nissan.jpg"),
                              fit: BoxFit.cover,
                            )),
                      ),
                      AppSizedBox.sizedW20,
                      Expanded(
                        child: Container(
                          height: 120.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '${datum.title ?? " withoud data"}',
                                style: Theme.of(context).textTheme.bodyText1,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                              AppSizedBox.sizedH10,
                              Row(
                                children: [
                                  const Icon(Icons.person),
                                  AppSizedBox.sizedW5,
                                  Text(
                                      " ${datum.customer?.name ?? "Withoud data"} "),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.location_on),
                                  AppSizedBox.sizedW5,
                                  Text(
                                      " ${datum.city?.name ?? "Withoud data"} "),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.timer),
                                  AppSizedBox.sizedW5,
                                  Text(
                                      " ${datum.createdAt.toString() ?? "Withoud data"} "),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
