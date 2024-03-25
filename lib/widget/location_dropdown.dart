import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class LocationDropDown extends StatefulWidget {
  const LocationDropDown({super.key});

  @override
  State<LocationDropDown> createState() => _LocationDropDownState();
}

class _LocationDropDownState extends State<LocationDropDown> {
  var items = [
    "Dubai",
    "Kochi",
    "Calicut",
    "Malappuram",
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
          barrierLabel: 'Location',
          hint: Text(
            'Location',
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
