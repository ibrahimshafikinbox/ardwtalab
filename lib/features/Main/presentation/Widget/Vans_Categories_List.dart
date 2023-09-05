import 'package:ardwtalab/features/Main/Cubit/get_department/get_department_Cubit.dart';
import 'package:ardwtalab/features/Main/data/Models/car_parent_model/datum.dart';
import 'package:ardwtalab/features/Main/data/Models/vans_parent_model/VansData.dart';
import 'package:ardwtalab/features/Main/data/Models/vans_parent_model/vans_parent_model.dart';
import 'package:ardwtalab/features/resources/colors/colors.dart';
import 'package:flutter/material.dart';

class Vans_Categories_List extends StatefulWidget {
  const Vans_Categories_List({super.key});

  @override
  _MyVans_Categories_ListState createState() => _MyVans_Categories_ListState();
}

class _MyVans_Categories_ListState extends State<Vans_Categories_List> {
  String _selectedItem = ' ';

  @override
  Widget build(BuildContext context) {
    VansParentModel? vansParentModel;
    var vansCubit = GetDepartmentCubit.get(context);
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: vansCubit.vansParentModel!.data!.length,
          itemBuilder: (BuildContext context, int index) {
            // CarParentData carParentData =
            //     GetDepartmentCubit.get(context).carParentModel!.data![index];
            VansData vansData = vansCubit.vansParentModel!.data![index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildItem(vansData.title ?? " value"),
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
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
