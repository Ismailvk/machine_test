import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class MobileDropDown extends StatefulWidget {
  const MobileDropDown({super.key});

  @override
  State<MobileDropDown> createState() => _MobileDropDownState();
}

class _MobileDropDownState extends State<MobileDropDown> {
  var items = [
    "+919945786578",
    "+919945786578",
    "+919945786578",
    "+919945786578",
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width / 1.1,
      height: size.height / 13,
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          barrierLabel: 'Mobile No',
          hint: Text(
            'Mobile No',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: const ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 140,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
