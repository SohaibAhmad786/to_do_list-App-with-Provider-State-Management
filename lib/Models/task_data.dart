import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todolist_app/Models/task_model.dart';

class TaskData extends ChangeNotifier {
  // ignore: prefer_final_fields
  List<Task> _tlist = [
    Task(taskName: "Buy Milk"),
  ];
  int done=0;
  int delete=0;

  UnmodifiableListView<Task> get taskslist {
    return UnmodifiableListView(_tlist);
  }

  void addTask(String newListTileItem){
    final task=Task(taskName: newListTileItem);
    _tlist.add(task);
    notifyListeners();
  }
  
  void updateTask(Task t){
    t.updateComplete();
    done++;
    notifyListeners();
  }
  
  void deleteTask(int index){
    _tlist.removeAt(index);
    delete++;
    notifyListeners();
  }

  int get tlistCount{
    return _tlist.length;
  }
}
