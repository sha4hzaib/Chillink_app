import 'package:flutter/material.dart';
import 'completed_stories_screen.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class StoryScreen extends StatefulWidget {
  final String title;
  final String imagePath;
  final String content;

  const StoryScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.content,
  });

  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleGestureDetector(
        onDoubleTap: () {
          if (!completedStories.contains(widget.title)) {
            setState(() {
              completedStories.add(widget.title);
            });
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StoryCompletedScreen(),
            ),
          );
        },
        onHorizontalSwipe: (direction) {
          if (direction == SwipeDirection.right) {
            Navigator.pop(context);
          }
        },
        onVerticalSwipe: (direction) {},
        child: LayoutBuilder(
          builder: (context, constraints) {
            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  title: const Text('Story'),
                  floating: true,
                  expandedHeight: constraints.maxHeight * 0.3,
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SliverSafeArea(
                  sliver: SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              widget.title,
                              style: TextStyle(
                                  fontSize: constraints.maxWidth * 0.1,
                                  fontFamily: 'FontMain'),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(widget.content, style: const TextStyle(fontSize: 16)),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class StoryCompletedScreen extends StatelessWidget {
  const StoryCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Story Completed")),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 80,
            ),
            SizedBox(height: 20),
            Text(
              "This story has been marked as completed.",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
