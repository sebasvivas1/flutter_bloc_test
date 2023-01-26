import 'package:flutter/material.dart';
import 'package:flutter_tasks_app/blocs/bloc_exports.dart';
import 'package:flutter_tasks_app/screens/tasks_screen.dart';

import 'models/task.dart';

void main() {
  BlocOverrides.runZoned(() => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TasksBloc(),
      child: MaterialApp(
        title: 'Tasks App by Seb',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TasksScreen(),
      ),
    );
  }
}
