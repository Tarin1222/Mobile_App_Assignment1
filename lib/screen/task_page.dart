import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Task Board'),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return buildTaskCard(tasks[index], 'Your Personal task management and planning solution for planning your day, week & months', '12:55 pm 25th May, 2023');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            tasks.add('New Task');
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.black,
      ),
    );
  }

  Card buildTaskCard(String taskTitle, String taskDescription, String taskTime) {
    return Card(
      child: ListTile(
        title: Text(taskTitle),
        subtitle: Text('$taskDescription\n$taskTime'),
      ),
    );
  }
}