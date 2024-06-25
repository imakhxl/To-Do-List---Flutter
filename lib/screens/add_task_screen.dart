import 'package:flutter/material.dart';
import 'package:to_doey/models/task_data.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Flexible(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent,fontWeight: FontWeight.w500),
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
            onChanged: (newText){
                  newTaskTitle = newText;
            },),
            SizedBox(height: 10.0),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text('Add'),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightBlueAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
