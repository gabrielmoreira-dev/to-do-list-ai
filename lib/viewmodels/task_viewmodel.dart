import 'package:flutter/material.dart';
import '../models/task.dart';
import '../services/task_service.dart';

class TaskViewModel extends ChangeNotifier {
  List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  Future<void> fetchTasks() async {
    _tasks = await TaskService().tasks();
    notifyListeners();
  }

  Future<void> addTask(Task task) async {
    await TaskService().insertTask(task);
    await fetchTasks();
  }
}