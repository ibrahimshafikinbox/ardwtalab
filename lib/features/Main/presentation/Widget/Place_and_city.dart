import 'package:ardwtalab/features/resources/colors/colors.dart';
import 'package:ardwtalab/features/resources/styles/app_text_style.dart';
import 'package:flutter/material.dart';

class Place_And_City extends StatelessWidget {
  const Place_And_City({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 2.25,
            decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(
                  color: AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "place",
                      style: AppTextStyle.textStyleMediumAppBlack,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 2.25,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.grey,
              ),
              borderRadius: BorderRadius.circular(8),
              color: AppColors.white,
            ),
            child: Row(
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "City",
                      style: AppTextStyle.textStyleMediumAppBlack,
                    ),
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.arrow_drop_down))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
