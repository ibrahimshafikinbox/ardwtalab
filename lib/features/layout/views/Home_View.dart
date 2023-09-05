// import 'package:ardwtalab/features/layout/cubit/cubit.dart';
// import 'package:ardwtalab/features/layout/cubit/status.dart';

// import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

// class Home_View extends StatefulWidget {
//   const Home_View({Key? key}) : super(key: key);

//   @override
//   State<Home_View> createState() => _Home_ViewState();
// }

// class _Home_ViewState extends State<Home_View> {
//   @override
//   Widget build(BuildContext context) {
//     return Builder(builder: (context) {
//       return BlocConsumer<AppCubit, AppStates>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           var cubit = AppCubit.get(context);
//           return Scaffold(
//             body: cubit.screens[cubit.currentIndex],

//             bottomNavigationBar: BottomNavigationBar(
//               onTap: (index) {
//                 AppCubit.get(context).changeBottomNav(index);
//               },
//               currentIndex: AppCubit.get(context).currentIndex,
//               backgroundColor: Colors.green,
//               selectedItemColor: Colors.green,
//               unselectedItemColor: Colors.blue,
//               items: [
//                 const BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.home,
//                   ),
//                   label: "Main",
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.follow_the_signs_rounded,
//                   ),
//                   label: "Following",
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.notifications_outlined,
//                   ),
//                   label: "notifications",
//                 ),
//                 const BottomNavigationBarItem(
//                   icon: Icon(
//                     Icons.message_outlined,
//                   ),
//                   label: "messages",
//                 ),
//               ],
//             ),
//             //
//           );
//         },
//       );
//     });
//   }
// }

import 'package:ardwtalab/features/layout/cubit/cubit.dart';
import 'package:ardwtalab/features/layout/cubit/status.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class Home_View extends StatefulWidget {
  const Home_View({Key? key}) : super(key: key);

  @override
  State<Home_View> createState() => _Home_ViewState();
}

class _Home_ViewState extends State<Home_View> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = AppCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],

            bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 12,
              child: SizedBox(
                height: 80,
                child: BottomNavigationBar(
                  elevation: 0,
                  onTap: (index) {
                    AppCubit.get(context).changeBottomNav(index);
                  },
                  currentIndex: AppCubit.get(context).currentIndex,
                  selectedItemColor: Colors.red[800],
                  unselectedItemColor: Colors.black,
                  items: [
                    const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: "home",
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.interests_outlined,
                      ),
                      label: "Following",
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.notifications_outlined,
                      ),
                      label: "notifications",
                    ),
                    const BottomNavigationBarItem(
                      icon: Icon(
                        Icons.message_outlined,
                      ),
                      label: "messages",
                    ),
                  ],
                ),
              ),
            ),
            //
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,

            floatingActionButton: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 70,
                width: 60,
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ),
          );
        },
      );
    });
  }
}
