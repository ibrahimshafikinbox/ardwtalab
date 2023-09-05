import 'package:flutter/material.dart';

class RememberMeContainer extends StatefulWidget {
  @override
  _RememberMeContainerState createState() => _RememberMeContainerState();
}

class _RememberMeContainerState extends State<RememberMeContainer> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          const Text(
            'تذكرني',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            child: Checkbox(
              activeColor: Colors.redAccent,
              value: rememberMe,
              onChanged: (value) {
                setState(() {
                  rememberMe = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
