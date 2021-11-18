import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:tasks_app/model/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String? newTask) {
    final task = Task(title: newTask);
    _tasks.add(task);
    notifyListeners();
  }

  void upDateTask(Task task) {
    task.isDone = !task.isDone;
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
