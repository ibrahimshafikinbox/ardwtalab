import 'package:flutter/material.dart';

class AcceptCockies extends StatefulWidget {
  @override
  _AcceptCockiesState createState() => _AcceptCockiesState();
}

class _AcceptCockiesState extends State<AcceptCockies> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
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
