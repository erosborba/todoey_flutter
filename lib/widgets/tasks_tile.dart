import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  final Function checkboxCallback;
  final Function longPressCallback;
  TasksTile(
      {this.isChecked,
      this.title,
      this.checkboxCallback,
      this.longPressCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          title,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkboxCallback,
        ));
  }
}
