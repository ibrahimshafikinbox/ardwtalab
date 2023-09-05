import 'package:ardwtalab/features/Login/Cubit/cubit/View/Widget/Custom_Form_Field.dart';
import 'package:ardwtalab/features/Login/Cubit/cubit/View/Widget/custom_bottom..dart';
import 'package:ardwtalab/features/Regester/widgets/accept_cockies.dart';

import 'package:flutter/material.dart';

class regesterView extends StatefulWidget {
  @override
  State<regesterView> createState() => _regesterViewState();
}

class _regesterViewState extends State<regesterView> {
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
    //   create: (BuildContext context) => regesterCubit(),
    //   child: BlocConsumer<regesterCubit, regesterState>(
    //     listener: (BuildContext context, state) {
    //       if (state is regesterSuccess) {}
    //       if (state is regesterError) {}
    //     },
    //     builder: (BuildContext context, state) {
    return Scaffold(
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
                "اهلا بك معنا سجل الان   ",
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
                label: "الاسم كامل  ",
                hint: 'الاسم كامل ',
                // prefix: Icons.phone,
                onValidate: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'مطلوب ';
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
                label: "رقم الجوال  ",
                hint: 'رقم الجوال ',
                // prefix: Icons.lock_outline,
                suffixPressed: () {},
                onValidate: (String? value) {
                  if (value == null || value.isEmpty) {
                    return '  مطلوب';
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
                label: "كلمه المرور  ",
                hint: 'كلمه المرور  ',
                // prefix: Icons.lock_outline,
                suffixPressed: () {},
                onValidate: (String? value) {
                  if (value == null || value.isEmpty) {
                    return '  مطلوب';
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
                label: "تاكيد كلمه المرور     ",
                hint: 'تاكيد كلمه المرور     ',
                // prefix: Icons.lock_outline,
                suffixPressed: () {},
                onValidate: (String? value) {
                  if (value == null || value.isEmpty) {
                    return '  مطلوب';
                  }
                  return null;
                },
              ),
            ),
            Row(
              children: [
                const Spacer(),
                RichText(
                  text: const TextSpan(
                    text: "الشروط  و الاحكام ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,

                      decoration:
                          TextDecoration.underline, // Add underline decoration
                    ),
                  ),
                ),
                const Text(
                  " اوافق على كافه ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                AcceptCockies(),
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
              text: "التالى    ",
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: RichText(
                text: const TextSpan(
                  text: "الغاء  ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,

                    decoration:
                        TextDecoration.underline, // Add underline decoration
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
