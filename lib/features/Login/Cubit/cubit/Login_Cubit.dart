import 'package:ardwtalab/features/Login/Cubit/cubit/Login_States.dart';
import 'package:ardwtalab/features/Login/data/models/data.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class LoginCubit extends Cubit<LoginState> {
  final Dio _dio = Dio();
  Login_Model? login_model;

  var device_token = FirebaseMessaging.instance.getToken();

  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);

  Future<void> login({
    required String phone,
    required String password,
    required String deviceToken,
  }) async {
    try {
      emit(LoginLoading());
      final response = await _dio.post(
        // '${Constants.BaseUrl}${Constants.Login}',
        "",
        data: {
          'phone': phone,
          'password': password,
          'device_token': deviceToken,
          'device_type': "ios",
        },
        options: Options(
          headers: {
            'Accept': 'application/json',
            'Accept-Language': 'en',
          },
        ),
      );
      print(response.data);
      emit(LoginSuccess());
      final loginModel = Login_Model.fromJson(response.data);
      login_model = loginModel;

      print(" 💝 ============ ${login_model!.token}");
      print(
          "💝====================================${login_model!.userlogin.name}");

      print("💝================= login success");
    } on DioError catch (e) {
      print(e.error);
      emit(LoginError('Error logging in.'));
    }
  }

  Future<void> getDeviceToken() async {
    String? device_token = await FirebaseMessaging.instance.getToken();
    print("=================${device_token}");
  }
}
