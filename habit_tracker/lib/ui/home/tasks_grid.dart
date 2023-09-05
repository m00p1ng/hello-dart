import 'package:flutter/material.dart';
import 'package:habit_tracker/models/task.dart';
import 'package:habit_tracker/ui/task/task_with_name.dart';

class TasksGrid extends StatelessWidget {
  const TasksGrid({required this.tasks});
  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        final task = tasks[index];

        return TaskWithName(task: task);
      },
      itemCount: tasks.length,
    );
  }
}
