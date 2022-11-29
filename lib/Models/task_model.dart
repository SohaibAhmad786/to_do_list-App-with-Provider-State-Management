class Task {
  String taskName;
  bool isCompleted=false;

  Task({required this.taskName});

  updateComplete(){
    isCompleted=!isCompleted;
  }
}