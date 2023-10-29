import 'package:flutter/material.dart';

class ContentDistribution extends StatefulWidget {
  const ContentDistribution({super.key});

  @override
  State<ContentDistribution> createState() => _ContentDistributionState();
}

class _ContentDistributionState extends State<ContentDistribution> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text("배부)"),
            ),
          ),
        ),
        SizedBox(
          height: 142,
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ListView(
                    shrinkWrap: true,
                    children: List<Widget>.generate(
                      3,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 2.0),
                          child: SizedBox(
                            height: 35,
                            width: double.infinity,
                            child: Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 30,
                                    width: double.infinity,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade500,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.shade400,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    "$index.",
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "distribution item index #$index",
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.close,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 30,
                      height: 30,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade500,
                        ),
                        child: InkWell(
                          onTap: () {},
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              size: 30,
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
        ),
      ],
    );
  }
}
