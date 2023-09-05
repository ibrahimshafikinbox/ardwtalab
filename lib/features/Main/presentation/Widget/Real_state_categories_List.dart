import 'package:ardwtalab/features/Main/Cubit/get_department/get_department_Cubit.dart';
import 'package:ardwtalab/features/Main/data/Models/real_state_parent_model/datum.dart';
import 'package:ardwtalab/features/Main/data/Models/real_state_parent_model/real_state_parent_model.dart';
import 'package:ardwtalab/features/resources/colors/colors.dart';
import 'package:flutter/material.dart';

class RealState_Categories_List extends StatefulWidget {
  const RealState_Categories_List({super.key});

  @override
  _MyVans_Categories_ListState createState() => _MyVans_Categories_ListState();
}

class _MyVans_Categories_ListState extends State<RealState_Categories_List> {
  String _selectedItem = ' ';

  @override
  Widget build(BuildContext context) {
    RealStateParentModel? realStateParentModel;
    var realstateCubit = GetDepartmentCubit.get(context);
    return Expanded(
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: realstateCubit.realStateParentModel!.data!.length,
          itemBuilder: (BuildContext context, int index) {
            // CarParentData carParentData =
            //     GetDepartmentCubit.get(context).carParentModel!.data![index];
            RealStateParentData realStateParentData =
                realstateCubit.realStateParentModel!.data![index];
            // vansCubit.vansParentModel!.data![index];

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildItem(realStateParentData.title ?? " value"),
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
