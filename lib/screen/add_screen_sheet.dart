import 'package:flutter/material.dart';
import 'package:tasks_app/model/task_data.dart';
import 'package:provider/provider.dart';

class AddScreenBottomSheet extends StatelessWidget {
  String? newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: ListView(
          children: [
            Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Center(
                child: Text(
                  'Add Your Task',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    onChanged: (value) {
                      newTask = value;
                    },
                    autofocus: true,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      ),
                    ),

                    /// its mean اني بقوله قصه عشان يعملي الكيرفات فالحواف يعني
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: FlatButton(
                      color: Colors.lightBlue,
                      onPressed: () {
                        Provider.of<TaskData>(context, listen: false)
                            .addTask(newTask);
                        Navigator.pop(context);
                      },
                      child: Text(
                        'ADD',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
