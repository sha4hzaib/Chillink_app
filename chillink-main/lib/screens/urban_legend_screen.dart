import 'package:flutter/material.dart';
import 'story_screen.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

class UrbanLegendScreen extends StatefulWidget {
  const UrbanLegendScreen({super.key});

  @override
  _UrbanLegendScreenState createState() => _UrbanLegendScreenState();
}

class _UrbanLegendScreenState extends State<UrbanLegendScreen> {
  final List<Map<String, String>> stories = [
    {
      'title': 'The Vanishing Hitchhiker',
      'description': 'A ghostly tale of a hitchhiker who disappears.',
      'image': 'assets/images/vanishing_hitchhiker.jpg',
      'content': '''It was a cold, rainy night when John, a long-distance truck driver, found himself on a lonely stretch of highway. The rain battered the windshield, making it nearly impossible to see more than a few feet ahead. As he drove through the dark, desolate road, he noticed a figure in the distance—a woman, drenched, standing by the side of the road with her thumb out, hitchhiking. Hesitant, but not heartless, John pulled over, rolling down the window slightly.

“Where are you headed?” he asked, eyeing the soaked figure. The woman, pale and shivering, gave him a faint smile. “Just down the road,” she replied softly. Something about her voice unsettled him, but he brushed it off. He opened the passenger door and she climbed in, dripping wet and cold. “Thank you,” she whispered, her voice barely audible over the sound of the rain.

As they drove in silence, John couldn’t help but glance at her from time to time. She seemed distant, staring out the window into the storm, her hair plastered to her face. She wore an old-fashioned dress, something that looked out of place for this time of year. But more than that, there was a sadness about her—a deep, overwhelming sorrow that filled the truck like a heavy fog.

After a few minutes, John tried to make small talk. “Rough night to be out walking. Where were you coming from?” The woman didn’t respond right away. She just continued staring out into the rain. Finally, after what felt like an eternity, she spoke. “I... I was at a party. Just trying to get home.” Her voice was hollow, as if the words were being pulled from some distant memory.

As they neared the destination she had mentioned, the rain began to let up. John looked ahead and saw a small, rundown house at the edge of the road. “Is this the place?” he asked, glancing at her. But when he looked to his right, the seat was empty. His heart skipped a beat. He slammed on the brakes and pulled over, frantically looking around the cab of the truck. The woman had vanished.

He got out of the truck, his breath visible in the cold air, and rushed to the house. Knocking on the door, he was greeted by an elderly woman. Confused and shaken, John explained what had just happened—that he had picked up a young woman hitchhiking, but she had disappeared from his truck without a trace. The old woman’s face went pale.

“You’re not the first,” she said quietly, her voice trembling. “That was my daughter. She died on this road ten years ago, on a night just like this. She was on her way home from a party when she was hit by a car.” John felt his stomach drop. He didn’t believe in ghosts, but there was no other explanation. The woman he had picked up was the spirit of the young girl, eternally hitchhiking the same stretch of road, trying to get home.

The old woman invited John inside and showed him a picture—an old photograph of her daughter. It was her. The same pale face, the same sad eyes, and the same old-fashioned dress. John left the house that night, shaken to his core, vowing never to drive that highway again.

But no matter how hard he tried to forget, the image of the vanishing hitchhiker stayed with him. Every time he passed a lone figure by the side of the road, a chill would run down his spine. He would never pick up another hitchhiker, always wondering if she was still out there, waiting for someone else to give her a ride that would never end.
'''
    },
    {
      'title': 'Bloody Mary',
      'description': 'A chilling tale about summoning a spirit.',
      'image': 'assets/images/bloody_mary.jpg',
      'content': '''It all started as a dare at a sleepover. Sarah and her friends, bored after hours of movies and snacks, decided to try something they’d only heard whispers about at school: summoning Bloody Mary. The legend was simple but terrifying. Stand in front of a mirror in the dark, say her name three times, and the vengeful spirit of Bloody Mary would appear, they said. Some claimed she would scratch your eyes out; others said she would drag you into the mirror, never to be seen again.

Laughing nervously, Sarah’s friend Emma was the first to suggest it. "Come on, it’s just a silly game," she said, trying to act brave. After some hesitation, the group of girls made their way to the bathroom. The air inside was thick with nervous energy as they turned off the lights, leaving only the faint glow of a candle they had brought with them. Sarah stood in front of the mirror, her heart pounding in her chest, while the others huddled behind her, whispering and giggling in the dark.

With a shaky voice, Sarah began. “Bloody Mary... Bloody Mary... Bloody Mary...” she said, her breath catching on the last word. The candle flickered, casting eerie shadows on the walls. At first, nothing happened. The girls stared into the mirror, their reflections barely visible in the dim light. Just as they were about to laugh it off, the temperature in the room seemed to drop. Sarah’s breath became visible in the cool air, and the candle flickered wildly before going out completely.

The room plunged into darkness. The giggles stopped. For a moment, all was silent except for the sound of their ragged breathing. And then, a faint sound—scratching, like nails on glass—filled the room. Sarah’s pulse raced as she fumbled for the light switch. But before she could turn it on, she saw it—a face in the mirror, not her own. Pale, with hollow eyes and long, matted hair. The face of Bloody Mary.

The girls screamed and bolted from the bathroom, slamming the door behind them. They huddled together in the living room, the lights all turned on, trying to convince themselves that it had been a trick of the light, their imaginations running wild. But deep down, Sarah knew what she had seen. It wasn’t her imagination. It was real.

That night, Sarah couldn’t sleep. Every time she closed her eyes, she saw that face in the mirror. The hollow eyes staring back at her, the cold, dead expression. When she finally did drift off, she was plagued by nightmares. In one dream, she stood in front of the same mirror, but this time, she couldn’t look away. Bloody Mary reached through the glass, her cold, bony fingers wrapping around Sarah’s throat, pulling her closer and closer until the mirror swallowed her whole.

The next morning, Sarah noticed scratches on her bathroom mirror—long, deep gouges, as if something had tried to claw its way out. Terrified, she called her friends, only to find that Emma had woken up with strange marks on her arms, as though she had been scratched in her sleep. One by one, the other girls reported strange occurrences: whispers in the night, cold breezes passing through their rooms, and objects moving on their own.

Sarah knew they had made a mistake. They had summoned something they couldn’t control, and now, Bloody Mary wouldn’t leave them alone. No matter how hard they tried to forget, no matter how many lights they kept on, the spirit had latched onto them, and she wasn’t going to stop until she claimed them one by one.

From that night on, Sarah couldn’t look into a mirror without feeling a chill run down her spine. She avoided them as much as possible, but deep down, she knew it was only a matter of time before Bloody Mary came for her. She had been summoned, and now she was waiting—just beyond the glass.
'''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Urban Legend Stories')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SimpleGestureDetector(
            onHorizontalSwipe: (direction) {
              if (direction == SwipeDirection.right) {
                Navigator.pop(context);
              }
            },
            child: ListView.builder(
              itemCount: stories.length,
              itemBuilder: (context, index) {
                final story = stories[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12.0),
                  child: Card(
                    color: Colors.black38,
                    shape: const StadiumBorder(),
                    elevation: 8,
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => StoryScreen(
                              title: story['title']!,
                              imagePath: story['image']!,
                              content: story['content']!,
                            ),
                          ),
                        );
                      },
                      leading: Image.asset(
                        story['image']!,
                        width: 50,
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text(
                        story['title']!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          story['description']!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                          ),
                        ),
                      ),
                      contentPadding: const EdgeInsets.all(16.0),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}