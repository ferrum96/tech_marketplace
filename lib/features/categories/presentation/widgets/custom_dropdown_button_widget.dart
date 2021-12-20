import 'package:flutter/material.dart';
import 'package:tech_marketplace/features/home/domain/entities/filter_item.dart';

class CustomDropDownButton extends StatefulWidget {
  final List<FilterItemEntity> itemList;
  final double width, height;
  final String? hint;
  final Border? border;
  final TextStyle? style;

  const CustomDropDownButton(
      {Key? key,
      required this.itemList,
      required this.width,
      required this.height,
      required this.hint,
      this.border,
      this.style})
      : super(key: key);

  @override
  State<CustomDropDownButton> createState() =>
      _CustomDropDownButtonState(itemList, width, height, hint, border, style);
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  bool isDropdownOpened = false;
  String? dropDownValue;
  final List<FilterItemEntity> itemList;
  final double width, height;
  final String? hint;
  final Border? border;
  final TextStyle? style;

  _CustomDropDownButtonState(this.itemList, this.width, this.height, this.hint,
      this.border, this.style);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(5), border: border),
      child: DropdownButtonHideUnderline(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: DropdownButton(
            value: itemList[0].filterName,
            icon: Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.asset("assets/images/change_down_icon.png")),
            onChanged: (String? newValue) {
              setState(() {
                dropDownValue = newValue;
              });
            },
            items: itemList.map((FilterItemEntity value) {
              return DropdownMenuItem(
                value: value.filterName,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      value.filterName,
                      style: style,
                    ),
                    Container(
                        child: value.imagePath.isEmpty
                            ? null
                            : Image.asset(
                                value.imagePath,
                                fit: BoxFit.fill,
                              )),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
