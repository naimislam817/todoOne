import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: TaskBoard(),
  ));
}

class TaskBoard extends StatelessWidget {
  const TaskBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plan IT Task Board'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              children: [
                TaskItem('Task 1', 'Your Personal task management...'),
                TaskItem('Task 2', 'Your Personal task management...'),
                TaskItem('Task 3', 'Your Personal task management...'),
                TaskItem('Task 4', 'Your Personal task management...'),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.blue,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondPage()),
                );
              },
              child: const Text('Let\'s get started'),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String title;
  final String description;

  const TaskItem(this.title, this.description, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(16.0),
      color: Colors.grey[300],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(description),
          const SizedBox(height: 10),
          Text('12:55 pm 25th May, 2023'),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Task'),
      ),
      body: Center(
        child: const Text('Second Page Content'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add functionality to add more items to the list
          // For example, you can use a TextEditingController to get user input.
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
