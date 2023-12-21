import 'package:flutter/material.dart';
import 'task_model.dart';

class TaskController extends ChangeNotifier {
  TaskController._();
  static final TaskController _controller = TaskController._();
  factory TaskController() => _controller;
  void addTask(Task task) {
// Thêm nhiệm vụ vào danh sách
    TaskModel().tasks.add(task);
// Cập nhật giao diện
    notifyListeners();
  }

  void toggleTask(Task task) {
// Thay đổi trạng thái hoàn thành của nhiệm vụ
    task.isCompleted = !task.isCompleted;
// Cập nhật giao diện
    notifyListeners();
  }
}
