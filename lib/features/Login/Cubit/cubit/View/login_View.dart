import 'package:ardwtalab/features/Login/Cubit/cubit/View/Widget/Custom_Form_Field.dart';
import 'package:ardwtalab/features/Login/Cubit/cubit/View/Widget/custom_bottom..dart';
import 'package:ardwtalab/features/Login/Cubit/cubit/View/Widget/remeber_container.dart';
import 'package:ardwtalab/features/Main/Cubit/home_ads/home_Ads_Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var PhoneController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();
  String? deviceToken;

  // @override
  // void initState() {
  //   super.initState();
  //   getDeviceToken();
  // }

  // Future<void> getDeviceToken() async {
  //   String? device_token = await FirebaseMessaging.instance.getToken();
  //   setState(() {
  //     deviceToken = device_token;
  //     print(" device token >>>>>>>>>>>>>>>>>$deviceToken");
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // return BlocProvider(
    //   create: (BuildContext context) => LoginCubit(),
    //   child: BlocConsumer<LoginCubit, LoginState>(
    //     listener: (BuildContext context, state) {
    //       if (state is LoginSuccess) {}
    //       if (state is LoginError) {}
    //     },
    //     builder: (BuildContext context, state) {
    return BlocProvider(
      create: (context) => HomeAdsCubit(),
      child: Scaffold(
        body: Form(
          key: formKey,
          child: ListView(
            children: [
              SizedBox(
                height: 80,
                child: Center(
                  child: Image.asset("assets/Images/ard.jpg"),
                ),
              ),
              Center(
                child: Text(
                  "مرحبا بك مجددا  ",
                  style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultFormField(
                  controller: PhoneController,
                  type: TextInputType.visiblePassword,
                  label: "رقم الجوال ",
                  hint: '0545478848',
                  // prefix: Icons.phone,
                  onValidate: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Your email';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DefaultFormField(
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  label: "كلمه المرور ",
                  hint: '********************',
                  // prefix: Icons.lock_outline,
                  suffixPressed: () {},
                  onValidate: (String? value) {
                    if (value == null || value.isEmpty) {
                      return '  enter Your Password';
                    }
                    return null;
                  },
                ),
              ),
              Row(
                children: [
                  const Text(
                    "هل فقدت كلمه المرور ؟",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const Spacer(),
                  RememberMeContainer(),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DefaultButton(
                function: () {},
                text: "تسجيل الدخول  ",
              ),
              const SizedBox(
                height: 40,
              ),
              Center(
                child: RichText(
                  text: const TextSpan(
                    text: "الدخول كزائر",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,

                      decoration:
                          TextDecoration.underline, // Add underline decoration
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Text(
                    "انشاء حساب ",
                    style: TextStyle(
                      color: Colors.red[800],
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'ليس لديك حساب ؟',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
