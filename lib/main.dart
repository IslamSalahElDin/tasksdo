import 'package:flutter/material.dart';
import 'package:tasks_app/screen/home.dart';
import 'package:tasks_app/screen/tasks_sheets.dart';
import 'package:provider/provider.dart';
import 'package:tasks_app/model/task_data.dart';

void main() => runApp(TasksApp());

class TasksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        // home:,
        initialRoute: HomeScreen.id,
        routes: {
          HomeScreen.id: (context) => HomeScreen(),
          TasksSheets.id: (context) => TasksSheets(),
        },
        // ),
      ),
    );
  }
}
