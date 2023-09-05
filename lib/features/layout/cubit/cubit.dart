import 'package:ardwtalab/features/Following/folllowing_view.dart';
import 'package:ardwtalab/features/Main/presentation/views/Main_View.dart';
import 'package:ardwtalab/features/chat/chat_View.dart';
import 'package:ardwtalab/features/layout/cubit/status.dart';
import 'package:ardwtalab/features/notifications/notification_View.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    const Main_View(),
    const Following_View(),
    const Notification_View(),
    const Chat_View(),
  ];

  List<String> titles = [
    'Main',
    'Following',
    'notifacation ',
    "Messages",
  ];
  void changeBottomNav(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavBarState());
  }
}
