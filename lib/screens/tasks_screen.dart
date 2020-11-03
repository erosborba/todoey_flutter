import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/tasks_list.dart';
import '../constants.dart';
import 'add_task_screen.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) => SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: AddTaskScreen(),
              ),
            ),
          );
        },
        backgroundColor: kPrimaryColor,
        child: Icon(Icons.add),
      ),
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              child: Icon(
                Icons.list,
                size: 30.0,
                color: kPrimaryColor,
              ),
              backgroundColor: Colors.white,
              radius: 30.0,
            ),
            SizedBox(height: 10),
            Text(
              'Tarefas',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              pluralize(Provider.of<TaskData>(context).taskCount).toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

pluralize(tarefas) {
  if (tarefas > 1) {
    return '$tarefas tarefas';
  }
  if (tarefas == 1) {
    return '$tarefas tarefa';
  } else {
    return 'Nenhuma Tarefa';
  }
}
