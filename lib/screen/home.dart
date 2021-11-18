import 'package:flutter/material.dart';
import 'package:tasks_app/screen/tasks_sheets.dart';
import 'package:tasks_app/screen/add_screen_sheet.dart';
import 'package:tasks_app/model/task_data.dart';
import 'package:tasks_app/widget/task_list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  static final String id = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///1st Scaffold color
      backgroundColor: Colors.lightBlueAccent,
      resizeToAvoidBottomInset: true,

      ///3rd body ..
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// الي فيها الصف الي فيه الايكووون بتاعت الليست واسم البرنامج عدد التاسكات
          Container(
            padding: EdgeInsets.only(top: 60, left: 45, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, TasksSheets.id);
                    },
                    icon: Icon(
                      Icons.list,
                      size: 35,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Todoey',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 30),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'You Have ${Provider.of<TaskData>(context).taskCount} Tasks',
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ],
            ),
          ),
          Expanded(
            /// الي فيها التاسكات والشيك بوكس
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0)),
              ),
              child: TaskList(),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlue,
        elevation: 5,
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: false,
              builder: (context) => AddScreenBottomSheet());
        },
        child: Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
    );
  }
}
