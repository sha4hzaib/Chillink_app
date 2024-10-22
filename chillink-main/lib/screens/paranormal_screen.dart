import 'package:flutter/material.dart';
import 'story_screen.dart';

class ParanormalScreen extends StatefulWidget {
  @override
  _ParanormalScreenState createState() => _ParanormalScreenState();
}

class _ParanormalScreenState extends State<ParanormalScreen> {
  final List<Map<String, String>> stories = [
    {
      'title': 'The Haunted House',
      'description': 'A story about a house that is said to be haunted.',
      'image': 'assets/images/haunted_house.jpg',
      'content': '''It was a chilly October evening when James, a young architect, received an invitation to survey an old mansion on the outskirts of town. The mansion, once majestic, had fallen into disrepair and was now hidden under a thick veil of mist. Locals whispered rumors of strange occurrences—flickering lights, distant whispers, and shadows that seemed to move on their own. But James, ever the skeptic, brushed off the tales. He believed the stories were just exaggerated folklore to keep curious eyes away.

As he approached the mansion, the air grew colder. The grand iron gates creaked open with an eerie groan as if welcoming him into its dark embrace. He hesitated for a moment but pushed forward, determined to complete the job. Inside, the mansion was eerily silent, with the faint scent of mildew and damp wood filling the air. Dust danced in the pale beams of moonlight that filtered through the broken windows. Each step James took echoed through the empty halls, amplifying the sense of isolation.

James climbed the spiral staircase, heading toward the attic, where a supposed architectural flaw needed inspection. As he reached the top, he heard a faint whisper—too faint to make out the words, but clear enough to send a shiver down his spine. He paused, heart racing, but convinced himself it was just the wind. Taking a deep breath, he pushed open the door to the attic. The door creaked as it swung open, revealing a room shrouded in darkness, with cobwebs hanging from every corner.

Suddenly, a loud thud echoed from behind him, and the attic door slammed shut with a force that sent a jolt of terror through him. James rushed to the door, pulling at the handle, but it wouldn’t budge. Panic began to set in. He was trapped. He fumbled for his flashlight and clicked it on, illuminating the room. To his horror, the beam revealed a figure in the far corner of the attic—an old, gaunt woman with hollow eyes, standing unnervingly still.

James’s heart pounded in his chest. He blinked, thinking his eyes were playing tricks on him. But the figure didn’t vanish. She stood there, motionless, staring. He stumbled backward, his breath coming in ragged gasps, but he couldn’t tear his eyes away from her. As he stepped back, his foot hit something soft. He looked down to see a pile of old, torn clothes... and bones. Human bones. Panic surged through him, but the old woman still didn’t move.

Out of nowhere, the woman spoke in a voice that was a raspy whisper, "Leave now, or suffer their fate." James, trembling, could feel his mind racing, but his body was frozen in place. He tried to respond, but no sound escaped his throat. The air grew heavier, suffocating, and the room seemed to close in on him. In a desperate attempt to escape, he threw his shoulder against the door. It cracked open just enough for him to squeeze through.

James ran down the staircase, his footsteps pounding like a drumbeat in his ears. The mansion seemed alive now, with shadows chasing him through the halls, and whispers growing louder. Just as he reached the front door, it flew open as if the mansion itself was forcing him out. He stumbled into the night, gasping for air, heart pounding in his chest. He didn’t look back, terrified that if he did, the woman would be right behind him.

When he finally reached his car, he looked up at the mansion one last time. It stood there, silent and still, as if nothing had happened. The mist swirled around it, cloaking it in mystery once more. But James knew what he had seen. He drove away, vowing never to return. Yet, as he left, he couldn’t shake the feeling that the old woman’s eyes were still watching him from the shadows.

That night, as James tried to sleep, he heard the faintest of whispers. He bolted upright, heart racing. But the room was empty, save for the chill that now lingered in the air. He knew, deep down, that the haunted house wasn’t done with him yet. The whispering would follow him—until he returned.
'''
    },
    {
      'title': 'Ghostly Encounters',
      'description': 'Tales of people who encountered ghosts.',
      'image': 'assets/images/ghostly_encounters.jpg',
      'content': '''Emily had always been a skeptic when it came to the supernatural. Growing up, she had heard ghost stories from her grandparents but never took them seriously. That changed one evening when she was driving back home after a late shift at work. The narrow, winding road through the forest had always felt isolating, but tonight, something felt... off. The trees seemed to press in closer, and the usual hum of nature had fallen into an eerie silence.

Halfway through her drive, her car radio crackled to life. Static filled the car, followed by faint, disjointed whispers. Emily frowned, glancing at the radio in confusion. It had been off, and the station displayed was blank. She reached over to turn it off completely, but the static persisted, growing louder. And then, through the noise, she heard it clearly—a voice. “Turn back.” The words were soft, almost pleading, but unmistakable. Her heart raced. She hit the brakes, eyes wide, scanning her surroundings.

There was no one in sight. The road was deserted, and the trees stood as silent sentinels in the night. Trying to calm her racing heart, she convinced herself it was just a radio glitch. She started driving again, but the further she went, the more she felt like she wasn’t alone. A glance in the rearview mirror revealed a figure sitting in the back seat—a man, pale, with hollow eyes, staring right at her. Emily screamed, swerving the car to a halt on the side of the road.

She whipped around, but the back seat was empty. Her breath came in gasps, and her hands shook as she gripped the steering wheel. What had she just seen? It had been so real, so vivid. She considered turning back but decided against it. She had to get home, away from this haunted stretch of road. The rest of the drive was tense, every shadow outside the car seeming to shift and move.

When she finally reached her apartment, she felt a wave of relief wash over her. Safe. But the feeling was short-lived. As she climbed into bed that night, the same whispers from the radio echoed in her room. “Turn back.” Her blood ran cold. She sat up, heart pounding, and looked around the dark room. Nothing. But then, she saw him—the same man, standing at the foot of her bed, his eyes hollow and dark, his pale face inches from hers.

Frozen in fear, Emily couldn't move. He didn’t speak, didn’t make a sound, but his presence filled the room with an overwhelming sense of dread. Slowly, he raised a hand, pointing towards the door. And then, just as suddenly as he had appeared, he was gone. Emily gasped, finally able to breathe. She jumped out of bed, rushing to turn on every light in the apartment, but the figure didn’t return.

The next morning, she researched the stretch of road where she had seen the ghostly figure. What she discovered chilled her to the bone. A man fitting the description of the figure she had seen had died in a car crash on that very road years ago. He had been driving late at night when he swerved to avoid something, losing control of his car and crashing into a tree. Locals believed his spirit haunted the road, warning late-night travelers to turn back before it was too late.

From that day forward, Emily avoided the road altogether. But no matter how hard she tried, she couldn’t shake the feeling that the man’s spirit had latched onto her—following her, watching her, waiting for her to return to that haunted stretch of road.
'''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paranormal Stories')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: stories.map((story) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: InkWell(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          story['title']!,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          story['description']!,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
