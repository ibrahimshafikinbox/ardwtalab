import 'package:flutter/material.dart';

// Widget defaultFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   Function? onSubmit,
//   ValueChanged<String>? onChanged,
//   VoidCallback? onTap,
//   required FormFieldValidator<String>? onValidate,
//   VoidCallback? suffixPressed,
//   required String label,
//   required String hint,
//   required IconData prefix,
//   bool isPassword = false,
//   IconData? suffix,
// }) =>
//     Padding(
//       padding: EdgeInsetsDirectional.symmetric(vertical: 10),
//       child: TextFormField(
//         controller: controller,
//         keyboardType: type,
//         obscureText: isPassword,
//         onFieldSubmitted: (s) {
//           onSubmit;
//         },
//         onChanged: onChanged,
//         onTap: onTap,
//         validator: onValidate,
//         decoration: InputDecoration(
//           hintText: hint,
//           labelText: label,
//           prefixIcon: Icon(
//             prefix,
//           ),
//           suffixIcon: IconButton(
//             onPressed: suffixPressed,
//             icon: Icon(
//               suffix,
//             ),
//           ),
//           border: const OutlineInputBorder(
//             borderRadius: BorderRadius.all(Radius.circular(50)),
//           ),
//         ),
//       ),
//     );
//    import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final Function? onSubmit;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? onValidate;
  final VoidCallback? suffixPressed;
  final String label;
  final String hint;
  // final IconData prefix;
  final bool isPassword;
  final IconData? suffix;

  const DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
    this.onSubmit,
    this.onChanged,
    this.onTap,
    required this.onValidate,
    this.suffixPressed,
    required this.label,
    required this.hint,
    // required this.prefix,
    this.isPassword = false,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: onChanged,
      onTap: onTap,
      validator: onValidate,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        // prefixIcon: Icon(
        //   // prefix,
        // ),
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffix,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
