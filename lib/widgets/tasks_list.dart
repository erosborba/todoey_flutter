import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/tasks_tile.dart';
import 'package:todoey_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TasksTile(
                title: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isDone,
                checkboxCallback: (bool checkBoxState) {
                  //   setState(
                  //     () {
                  //       Provider.of<TaskData>(context).tasks[index].toggleDone();
                  //     },
                  //   );
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
