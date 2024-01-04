import 'package:flutter/material.dart';
import 'package:to_do_list/theme/theme.dart';
import 'task_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo List',
      home: const TaskListView(),
      theme: lightMode,
      darkTheme: darktMode,
    );
  }
}
