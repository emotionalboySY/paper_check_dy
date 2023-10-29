import 'package:flutter/material.dart';

class ContentSelectorTitle extends StatefulWidget {
  const ContentSelectorTitle({super.key});

  @override
  State<ContentSelectorTitle> createState() => _ContentSelectorTitleState();
}

class _ContentSelectorTitleState extends State<ContentSelectorTitle> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                color: Colors.grey.shade400,
              ),
              child: Stack(
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "강의 선택"
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: 60,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                            elevation: 0.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                          ),
                          child: const Text(
                            "추가",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                color: Colors.grey.shade400,
              ),
              child: const Center(
                child: Text(
                  "날짜 선택",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
