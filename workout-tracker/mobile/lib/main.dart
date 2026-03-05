import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: WorkoutHome(), debugShowCheckedModeBanner: false));

class WorkoutHome extends StatelessWidget {
  const WorkoutHome({super.key});
  final List workouts = const [
    {"name": "Pushups", "target": "20 Reps", "level": "Beginner"},
    {"name": "Squats", "target": "15 Reps", "level": "Medium"},
    {"name": "Plank", "target": "1 Min", "level": "Hard"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fitness Tracker"), backgroundColor: Colors.blueAccent),
      body: ListView.builder(
        itemCount: workouts.length,
        itemBuilder: (context, i) => ListTile(
          title: Text(workouts[i]['name']),
          subtitle: Text(workouts[i]['level']),
          trailing: const Icon(Icons.arrow_forward_ios, size: 15),
          onTap: () => Navigator.push(context, MaterialPageRoute(
            builder: (context) => DetailPage(data: workouts[i])
          )),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Map data;
  const DetailPage({super.key, required this.data});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data['name'])),
      body: Center(child: Text("Target: ${data['target']}", style: const TextStyle(fontSize: 24))),
    );
  }
}