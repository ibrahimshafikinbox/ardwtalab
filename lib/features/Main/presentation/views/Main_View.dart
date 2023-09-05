// import 'package:ardwtalab/features/Main/Cubit/check_internet_connection/internet_connection_cubit.dart';
// import 'package:ardwtalab/features/Main/Cubit/home_ads/home_Ads_Cubit.dart';
// import 'package:ardwtalab/features/Main/Cubit/home_ads/home_ads_state.dart';
// import 'package:ardwtalab/features/Main/presentation/Widget/Custom_main_appBar.dart';
// import 'package:ardwtalab/features/Main/presentation/Widget/Place_and_city.dart';
// import 'package:ardwtalab/features/Main/presentation/Widget/ProductCard_builder.dart';
//  import 'package:ardwtalab/features/Main/presentation/Widget/my_gategory_itms.dart';
// import 'package:connectivity/connectivity.dart';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class Main_View extends StatefulWidget {
//   const Main_View({super.key});

//   @override
//   State<Main_View> createState() => _Main_ViewState();
// }

// class _Main_ViewState extends State<Main_View> {
//   @override
//   Widget build(BuildContext context) {
//     return MultiBlocProvider(
//       providers: [
//         BlocProvider<HomeAdsCubit>(
//           create: (context) => HomeAdsCubit()..getHomeAds(),
//         ),
//         BlocProvider<ConnectivityCubit>(
//           create: (context) => ConnectivityCubit(
//             Connectivity(),
//           ),
//         ),
//       ],
//       child: BlocConsumer<HomeAdsCubit, HomeAdsState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           return BlocBuilder<ConnectivityCubit, ConnectivityStatus>(
//             builder: (context, state) {
//                return Scaffold(
//                 body: Column(
//                   children: const [
//                     Custom_main_appBar(),
//                     SizedBox(
//                       height: 150,
//                       child: MyItemCategory(),
//                     ),

//                     Place_And_City(),

//                       Expanded(
//                       child: ProductCard(),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:ardwtalab/features/Main/Cubit/check_internet_connection/internet_connection_cubit.dart';
import 'package:ardwtalab/features/Main/Cubit/home_ads/home_Ads_Cubit.dart';
import 'package:ardwtalab/features/Main/Cubit/home_ads/home_ads_state.dart';
import 'package:ardwtalab/features/Main/presentation/Widget/Custom_main_appBar.dart';
import 'package:ardwtalab/features/Main/presentation/Widget/Place_and_city.dart';
import 'package:ardwtalab/features/Main/presentation/Widget/ProductCard_builder.dart';
import 'package:ardwtalab/features/Main/presentation/Widget/my_gategory_itms.dart';
import 'package:connectivity/connectivity.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Main_View extends StatefulWidget {
  const Main_View({Key? key});

  @override
  State<Main_View> createState() => _Main_ViewState();
}

class _Main_ViewState extends State<Main_View> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeAdsCubit>(
          create: (context) => HomeAdsCubit()..getHomeAds(),
        ),
        BlocProvider<ConnectivityCubit>(
          create: (context) => ConnectivityCubit(
            Connectivity(),
          ),
        ),
      ],
      child: BlocConsumer<HomeAdsCubit, HomeAdsState>(
        listener: (context, state) {},
        builder: (context, state) {
          return BlocBuilder<ConnectivityCubit, ConnectivityStatus>(
            builder: (context, connectionState) {
              return Scaffold(
                body: Column(
                  children: [
                    Custom_main_appBar(),
                    SizedBox(
                      height: 150,
                      child: MyItemCategory(),
                    ),
                    Place_And_City(),
                    if (connectionState == ConnectivityStatus.connected)
                      Expanded(
                        child: ProductCard(),
                      ),
                    if (connectionState == ConnectivityStatus.connected)
                      Expanded(
                        child: ProductCard(),
                      ),
                  ],
                ),
              );
              // } else {
              //     return Scaffold(
              //       body: Center(
              //         child: Text('We are not connected'),
              //       ),
              //     );
              //   }
            },
          );
        },
      ),
    );
  }
}
