import 'package:flutter/material.dart';

class TasksTile extends StatelessWidget {
  final bool isChecked;
  final String title;
  TasksTile({this.isChecked, this.title});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          title,
          style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          // onChanged: togglesCheck,
        ));
  }
}
// (bool checkBoxState) {
//           setState(
//             () {
//               isChecked = checkBoxState;
//             },
//           );
//         }
