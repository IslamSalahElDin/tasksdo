import 'package:flutter/material.dart';
import 'package:tasks_app/widget/task_tile.dart';
import 'package:tasks_app/model/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              TaskTitle: task.title,
              isChecked: task.isDone,
              onChange: (value) {
                taskData.upDateTask(task);
              },
              onLongPress: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
