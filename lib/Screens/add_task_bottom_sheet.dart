import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/Models/task_data.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});
  @override
  Widget build(BuildContext context) {
  String? newListTileItem;
    return Container(
      
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(color: Color(0xffD05050), fontSize: 30),
              ),
              TextFormField(
                onChanged: (value) {
                  newListTileItem=value;
                },
                style: const TextStyle(fontSize: 22,),
                autofocus: true,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffD05050),
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffD05050),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffD05050),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: const Color(0xffD05050),
                ),
                onPressed: () {
                  Provider.of<TaskData>(context,listen: false).addTask(newListTileItem!);
                  Navigator.pop(context);
                },
                child: const Text(
                  "Add",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
