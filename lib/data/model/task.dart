// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:hive_flutter/hive_flutter.dart';
part 'task.g.dart';
@HiveType(typeId: 1)
class Task extends HiveObject {
  @HiveField(0)
  final String user;
  @HiveField(1)
  final String task;
  @HiveField(2)
  final bool completed;
   Task({
    required this.user,
    required this.task,
    required this.completed,
  });
  
 
}
