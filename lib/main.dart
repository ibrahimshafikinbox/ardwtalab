// import 'package:ardwtalab/features/Main/Cubit/home_Ads_Cubit.dart';
// import 'package:ardwtalab/features/layout/cubit/cubit.dart';
// import 'package:ardwtalab/features/layout/views/Home_View.dart';
// import 'package:ardwtalab/features/resources/theme/theme_data.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Categories Example',
//       debugShowCheckedModeBanner: false,
//       theme: getAppTheme(),
//       home: MultiBlocProvider(
//         providers: [
//           BlocProvider<AppCubit>(
//             create: (context) => AppCubit(),
//           ),
//           BlocProvider<HomeAdsCubit>(
//             create: (context) => HomeAdsCubit()..getHomeAds(),
//           ),
//         ],
//         child: const Home_View(),
//       ),
//     );
//   }
// }
import 'package:ardwtalab/features/Main/Cubit/check_internet_connection/internet_connection_cubit.dart';
import 'package:ardwtalab/features/Main/Cubit/get_department/get_department_Cubit.dart';
import 'package:ardwtalab/features/Main/Cubit/home_ads/home_Ads_Cubit.dart';
import 'package:ardwtalab/features/layout/cubit/cubit.dart';
import 'package:ardwtalab/features/layout/views/Home_View.dart';
import 'package:ardwtalab/features/resources/theme/theme_data.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Corrected constructor

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (context) => AppCubit(),
        ),
        BlocProvider<HomeAdsCubit>(
          create: (context) => HomeAdsCubit()..getHomeAds(),
        ),
        BlocProvider<GetDepartmentCubit>(
          create: (context) => GetDepartmentCubit()..getdepartment(),
        ),
        BlocProvider<ConnectivityCubit>(
          create: (context) => ConnectivityCubit(
            Connectivity(),
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Categories Example',
        debugShowCheckedModeBanner: false,
        theme: getAppTheme(),
        home: Home_View(),
      ),
    );
  }
}
