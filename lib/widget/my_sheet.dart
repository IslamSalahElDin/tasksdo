import 'package:flutter/material.dart';
// import 'package:tasks_app/model/task_data.dart';
// import 'package:tasks_app/model/task.dart';
// import 'package:provider/provider.dart';

class MySheet extends StatelessWidget {
  final String? whatis;

  MySheet({this.whatis});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.all(14),
            child: Container(
              height: 150,
              width: 100,
              color: Colors.white,
              child: Text('$whatis'),
            )),
      ],
    );
  }
}
