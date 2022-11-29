import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:todolist_app/Widget/custom_slidable.dart';

class TaskListTile extends StatelessWidget {
  const TaskListTile(
      {required this.callBackOfDone,
      required this.isChecked,
      required this.taskTitle,
      required this.callBackOfDelete,
      super.key});

  final String taskTitle;
  final bool isChecked;
  final Function callBackOfDone;
  final Function callBackOfDelete;
  @override

  Widget build(BuildContext context) {
    return SizedBox(
      child: Slidable(
        closeOnScroll: true,
        startActionPane: ActionPane(
          extentRatio: 0.25,
          motion: const ScrollMotion(),
          children: [
           CustomSlideableAction(
              icons: Icons.done,
              lbl: "Done",
              func: callBackOfDone,
            ),
          ],
        ),
        endActionPane: ActionPane(
          extentRatio: .25,
          motion: const ScrollMotion(),
          children: [
            CustomSlideableAction(
              icons: Icons.delete,
              lbl: "Delete",
              func: callBackOfDelete,
            ),
          ],
        ),
        child: ListTile(
          title: Text(
            taskTitle,
            maxLines: 2,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isChecked ? const Color(0xffD05050):Colors.black,
            ),
          ),
          trailing: isChecked ? const Icon(Icons.done,color: Color(0xffD05050),):null,
        ),
      ),
    );
  }
}
