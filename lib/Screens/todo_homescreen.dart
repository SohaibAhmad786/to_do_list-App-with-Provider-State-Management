import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/Models/task_data.dart';
import 'package:todolist_app/Screens/add_task_bottom_sheet.dart';
import 'package:todolist_app/Widget/task_listview.dart';
import 'package:todolist_app/Widget/custom_row_widget.dart';

class TodoHomeScreen extends StatelessWidget {
  const TodoHomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD05050),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: CircleAvatar(
                    backgroundColor: Color(0xffF8F0E3),
                    radius: 30,
                    child: Icon(
                      Icons.edit,
                      size: 40,
                      color: Color(0xffD05050),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "To-Do List",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffF8F0E3),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomRowWidget(
                        txt: "Tasks", val: Provider.of<TaskData>(context).tlistCount, clr: Colors.lightBlueAccent),
                    CustomRowWidget(
                        txt: "Completed", val: Provider.of<TaskData>(context).done, clr: Colors.green),
                    CustomRowWidget(txt: "Deleted", val: Provider.of<TaskData>(context).delete, clr: Colors.red),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Color(0xffF8F0E3),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: const TaskListView(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: const TaskScreen(),
                ),
              );
            },
          );
        },
        backgroundColor: const Color(0xffD05050),
        child: const Icon(
          Icons.add,
          size: 40,
          color: Color(0xffF8F0E3),
        ),
      ),
    );
  }
}
