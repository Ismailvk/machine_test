import 'package:flutter/material.dart';
import 'package:ufs_mechine_test/constant/colors.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.amber)),
          onPressed: () {},
          child: Text(
            'Request Inspection',
            style: TextStyle(color: AppColors.secondaryColor),
          )),
    );
  }
}
