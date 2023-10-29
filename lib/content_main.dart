import 'package:flutter/material.dart';
import 'package:paper_check_dy/content_distribution.dart';
import 'package:paper_check_dy/content_inspection.dart';
import 'package:paper_check_dy/content_selector_title.dart';
import 'package:paper_check_dy/content_select_semester.dart';
import 'package:paper_check_dy/content_selector_list.dart';
import 'package:paper_check_dy/content_test.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ContentSemester(),
            ContentSelectorTitle(),
            ContentSelectorList(),
            ContentDistribution(),
            ContentInspection(),
            ContentTest(),
          ],
        ),
      ),
    );
  }
}
