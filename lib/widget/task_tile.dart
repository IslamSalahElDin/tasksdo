import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String? TaskTitle;
  final onChange;
  final onLongPress;
  TaskTile(
      {this.TaskTitle,
      this.isChecked = false,
      this.onChange,
      this.onLongPress});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(
        '$TaskTitle',
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
          activeColor: Colors.blueAccent,
          value: isChecked,
          onChanged: onChange),
    );
  }
}
