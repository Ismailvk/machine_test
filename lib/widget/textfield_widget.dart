import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/constant/colors.dart';

class TextfieldWidget extends StatelessWidget {
  const TextfieldWidget({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width / 1.1,
      height: size.height / 13,
      child: TextFormField(
          decoration: InputDecoration(
        label: Text(title),
        prefixIcon: Icon(
          icon,
          color: AppColors.secondaryColor,
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade500)),
      )),
    );
  }
}
