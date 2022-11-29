import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/Models/task_data.dart';
import 'package:todolist_app/Widget/task_listtile.dart';

class TaskListView extends StatelessWidget {
  const TaskListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, value, child) {
        return ListView.builder(
          itemCount: value.tlistCount,
          itemBuilder: (context, index) {
            final task = value.taskslist[index];
            return TaskListTile(
              taskTitle: task.taskName,
              isChecked: task.isCompleted,
              callBackOfDone: () {
                value.updateTask(task);
              },
              callBackOfDelete: (){
                value.deleteTask(index);
              },
            );
          },
        );
      },
    );
  }
}
