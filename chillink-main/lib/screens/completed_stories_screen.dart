import 'package:flutter/material.dart';


final List<String> completedStories = [];
class CompletedStoriesScreen extends StatelessWidget {
  const CompletedStoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Completed Stories")),
      body: completedStories.isNotEmpty
          ? ListView.builder(
            itemCount: completedStories.length,
            itemBuilder: (context, index) {
            return ListTile(
              title: Text(completedStories[index]),
              );
            },
          )
          : const Center(
            child: Text("No completed stories yet."),
      ),
    );
  }
}
