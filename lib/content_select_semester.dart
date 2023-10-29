import 'package:flutter/material.dart';

class ContentSemester extends StatefulWidget {
  const ContentSemester({super.key});

  @override
  State<ContentSemester> createState() => _ContentSemesterState();
}

class _ContentSemesterState extends State<ContentSemester> {
  final items = [
    "2023 겨울방학",
    "2024 여름방학",
    "2024 겨울방학",
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: FittedBox(
        fit: BoxFit.fitWidth,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                const Text(
                  "학기 선택",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    elevation: 0,
                    isExpanded: false,
                    hint: const Text(
                      "학기 선택",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
