import 'package:flutter/material.dart';

class ContentSelectorList extends StatefulWidget {
  const ContentSelectorList({super.key});

  @override
  State<ContentSelectorList> createState() => _ContentSelectorListState();
}

class _ContentSelectorListState extends State<ContentSelectorList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                color: Colors.grey,
              ),
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                children: List<Widget>.generate(
                  3,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      child: Container(
                        color: Colors.black26,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5.0, horizontal: 10.0),
                          child: Text(
                            "item $index",
                          ),
                        ),
                      ),
                    );
                  },
                ),
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
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black26, elevation: 0.0),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "Date Picker",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
