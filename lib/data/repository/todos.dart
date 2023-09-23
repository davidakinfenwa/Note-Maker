import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_hive_bloc/data/model/task.dart';

class TodoServices {
  late Box<Task> tasks;
  Future<void> init() async {
    Hive.registerAdapter(TaskAdapter());
    tasks = await Hive.openBox<Task>('tasks');
  }

  Future<List<Task>> getTasks(String username) async {
    final result = tasks.values.where((element) => element.user == username);
    return result.toList();
  }

  void addTask(String task, String username) {
    tasks.add(Task(user: username, task: task, completed: false));
  }

  void removeTask(String task, String username) async {
    final taskToRomove = tasks.values.firstWhere(
        (element) => element.task == task && element.user == username);
    await taskToRomove.delete();
  }

  Future<void> updateTask(String task, String username,
      {bool? completed}) async {
    final taskToEdit = tasks.values.firstWhere(
        (element) => element.task == task && element.user == username);
    final index = taskToEdit.key as int;
    await tasks.put(
        index,
        Task(
            user: username,
            task: task,
            completed: completed ?? taskToEdit.completed));
  }
}
