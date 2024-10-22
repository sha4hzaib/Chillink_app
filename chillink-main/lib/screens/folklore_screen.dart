import 'package:flutter/material.dart';
import 'story_screen.dart';

class FolkloreScreen extends StatefulWidget {
  @override
  _FolkloreScreenState createState() => _FolkloreScreenState();
}

class _FolkloreScreenState extends State<FolkloreScreen> {
  final List<Map<String, String>> stories = [
    {
      'title': 'The Headless Horseman',
      'description': 'A chilling tale of a spectral rider without a head.',
      'image': 'assets/images/headless_horseman.jpg',
      'content': '''In a small town nestled between dark woods and misty hills, there was a legend that sent shivers down the spines of all who heard it. The tale of the Headless Horseman had been passed down through generations, each retelling more chilling than the last. According to the townsfolk, on moonless nights, a spectral rider could be seen galloping through the woods, searching for his missing head.

The story began many years ago when a soldier, known only as Ichabod, rode into town. He was a valiant warrior, but he had made a powerful enemy during the war—a rival who sought revenge. One fateful night, as Ichabod rode home from battle, he was ambushed by his foe. In the struggle, Ichabod lost his head, and his body was never found. Legend has it that his restless spirit now roams the woods, seeking vengeance and the head he lost.

Local children were warned never to wander into the woods after dark, for fear of encountering the Headless Horseman. They would gather around campfires, daring each other to tell the story, their eyes wide with fear and excitement. But there was always one brave soul who would claim they had seen him—the flicker of a lantern in the distance, the sound of hooves pounding against the ground.

One stormy night, a group of friends decided to test the legend. They dared each other to venture into the woods, armed with flashlights and bravado. As they stepped into the darkness, the wind howled through the trees, and the air grew thick with tension. They walked deeper into the woods, the beam of their flashlights cutting through the fog. Laughter filled the air, but it quickly faded when they heard a distant sound—like the echo of a horse galloping.

At first, they brushed it off as their imaginations playing tricks on them. But then the sound grew closer, louder, until it was unmistakable—a horse racing through the trees. Panic began to set in, and the group turned to run, but it was too late. From the shadows emerged a figure on a dark horse, a cloaked rider with no head.

The friends stood frozen in terror as the Headless Horseman charged towards them, his spectral form glowing in the moonlight. The horse snorted and whinnied, its eyes glowing with a supernatural light. The rider raised his arm, as if reaching out for them, but then he let out a chilling wail that echoed through the woods.

The friends sprinted back, hearts pounding in their chests, not daring to look back. The sound of the horse's hooves thundered behind them, a relentless chase that seemed never-ending. They burst from the woods and into the safety of their town, collapsing in a heap on the ground, gasping for breath.

As they recounted the nightmarish encounter, the townsfolk listened, wide-eyed and horrified. The friends had become part of the legend now, proof that the Headless Horseman was not just a story to scare children but a very real threat that haunted the woods. To this day, locals advise against wandering into the forest after dark, for you never know when the Headless Horseman might come looking for his head—or his next victim.

And so the legend lives on, a chilling reminder of the soldier who roams the night, forever searching, forever lost, in a world where the line between the living and the dead is hauntingly thin.
'''
    },
    {
      'title': 'The Chupacabra',
      'description': 'A tale of a legendary creature.',
      'image': 'assets/images/chupacabra.jpg',
      'content': '''In the heart of Puerto Rico, whispers of a terrifying creature have haunted the countryside for decades. Known as the Chupacabra, this legendary being is said to prey on livestock, leaving a trail of dead goats and puzzled farmers in its wake. The creature is often described as a small, hairless dog with razor-sharp fangs and glowing red eyes, haunting the shadows of night.

The legend began in the mid-1990s when reports of livestock killings surged across the island. Farmers found their goats drained of blood, their lifeless bodies left behind without a single drop spilled on the ground. Panic spread like wildfire as more sightings were reported—each more bizarre than the last. Witnesses described the creature darting through the underbrush, its eyes reflecting the moonlight, sending chills down their spines.

One fateful night, a farmer named Carlos decided to confront the creature that had been terrorizing his livestock. Armed with nothing but a flashlight and a can-do spirit, he ventured into the dense woods behind his property. The air was thick with tension, and every rustle of leaves made his heart race. He felt the weight of fear pressing down on him, but he was determined to protect his family’s livelihood.

As he delved deeper into the woods, Carlos spotted movement out of the corner of his eye. There, in the shadows, was a creature unlike anything he had ever seen. It was small and gaunt, with spiny ridges running down its back. The creature turned to face him, and in that instant, their eyes met. Carlos felt a jolt of terror as he locked gazes with the Chupacabra.

The creature let out a high-pitched screech, a sound that resonated deep in Carlos’s bones. He stumbled backward, heart pounding, but curiosity kept him rooted to the spot. The Chupacabra lunged at him, baring its sharp teeth, and in a burst of adrenaline, Carlos turned and ran. He could hear the creature's claws scraping against the ground as it pursued him.

Reaching his farmhouse, Carlos bolted the door behind him, breathless and shaken. He recounted the encounter to his family, who listened in wide-eyed disbelief. From that day on, he became known as the man who faced the Chupacabra and lived to tell the tale. But deep down, Carlos knew that the creature was still out there, lurking in the shadows, waiting for the next opportunity to strike.

Over the years, the legend of the Chupacabra grew, capturing the imaginations of people across the globe. Sightings spread beyond Puerto Rico, with reports of similar creatures emerging from the United States to Latin America. Each tale varied slightly, but the essence remained the same—a monstrous being that thrived on the fear of its victims.

In some stories, the Chupacabra was depicted as a genetic experiment gone wrong, an abomination created in a lab. Others claimed it was an ancient creature, long thought extinct, awakened by modern times. Regardless of the origin, the fear it instilled was real and palpable.

Today, the Chupacabra remains a symbol of mystery and dread. Although scientists have tried to debunk the sightings, offering explanations ranging from stray dogs to wild animals, the legend endures. Farmers continue to keep a wary eye on their livestock, and children are warned to avoid the woods after dark. The Chupacabra has become more than just a tale; it is a reminder of the unknown, lurking just out of sight, waiting to strike when you least expect it.
'''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Folklore Stories')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: stories.map((story) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Container(
                  padding: EdgeInsets.all(20),
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
