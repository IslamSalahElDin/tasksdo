import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasks_app/model/task_data.dart';
import 'package:tasks_app/widget/my_sheet.dart';

class TasksSheets extends StatelessWidget {
  static final String id = 'tasks';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///1st AppBar ..
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFF3DBDF6),
        title: Text('Tasks'),
        leading: Padding(
          padding: EdgeInsets.all(4.5),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text('${Provider.of<TaskData>(context).taskCount}'),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),

      ///2nd Scaffold color
      backgroundColor: Color(0xFF3DBDF6),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.home,
          color: Colors.blueAccent,
          size: 30,
        ),
      ),

      ///3rd body ..
      body: ListView(
        children: [MySheet()],
      ),
    );
  }
}
