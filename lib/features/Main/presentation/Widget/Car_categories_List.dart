import 'package:ardwtalab/features/Main/Cubit/get_department/get_department_Cubit.dart';
import 'package:ardwtalab/features/Main/data/Models/car_parent_model/datum.dart';
import 'package:ardwtalab/features/resources/colors/colors.dart';
import 'package:flutter/material.dart';

class CarCategoriesList extends StatefulWidget {
  const CarCategoriesList({super.key});

  @override
  _MyCarCategoriesListState createState() => _MyCarCategoriesListState();
}

class _MyCarCategoriesListState extends State<CarCategoriesList> {
  String _selectedItem = 'All';

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount:
              GetDepartmentCubit.get(context).carParentModel!.data!.length,
          itemBuilder: (BuildContext context, int index) {
            CarParentData carParentData =
                GetDepartmentCubit.get(context).carParentModel!.data![index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildItem(carParentData.title ?? " value"),
            );
          }),
    );
  }

  Widget _buildItem(String label) {
    bool isSelected = (label == _selectedItem);
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedItem = label;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          decoration: BoxDecoration(
            color: isSelected ? AppColors.defaultColor : Colors.grey[300],
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColors.white : AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ),
    );
  }
}
