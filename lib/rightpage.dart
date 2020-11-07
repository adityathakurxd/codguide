import 'package:flutter/material.dart';

class RightPage extends StatefulWidget {
  @override
  _RightPageState createState() => _RightPageState();
}

class _RightPageState extends State<RightPage> {
  List<TipCard> tips;
  @override
  void initState() {
    super.initState();
    tips = _getTips();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: ListView.builder(
          itemCount: tips.length,
          itemBuilder: (context,index){
            return Container(
              color: Colors.black,
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 2,
                        height: 50,
                        color: index == 0 ? Colors.black : Colors.white,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 60,
                        color: index == tips.length - 1 ? Colors.black : Colors.white,
                      ),
                    ],
                  ),
                  Expanded(
                      child: Container(
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(top: BorderSide(width: 4, color: Colors.black87)),
                          boxShadow: [BoxShadow(
                            blurRadius: 10,
                            color: Colors.white38,
                          )],
                        ),
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                tips[index].title,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                tips[index].description,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            );
          }),
    );
  }
}

List<TipCard> _getTips(){
  List<TipCard> _tipList = [];

  _tipList.add(TipCard('Change the graphic setting', 'Keeping the graphics on HD or medium because by doing so your phone will be able to render all the frames and give you a smooth experience'));
  _tipList.add(TipCard('Choose your Shooting Mode Right', 'Advance mode is the one that is advisable to play the game with the shooting settings on advanced mode.'));
  _tipList.add(TipCard('Choose your Character Class Right', 'You will need to choose your character class prior to entering a Battle Royale match. The game offers an option of 6 Classes that you can choose for your character to have.'));
  _tipList.add(TipCard('Upgrade your weapon periodically', 'The upgrade allows you to equip your gun with various sights, foregrips, magazines and stocks which makes your weapon stats better.'));
  _tipList.add(TipCard('Use Boosts in Multiplayer mode for special abilities.', 'Your character is awarded with boosts in the Multiplayer mode as he advances.'));
  _tipList.add(TipCard('Learn the use of various throwables available', 'Call of Duty has a wide range of throwable which can be use apart from the generic smoke, frag and stun grenades.'));
  _tipList.add(TipCard('Crouch and slide to your advantage', 'Your character will slide as he crouches if you tap on crouch while sprinting or running. This helps you to change your location after being spotted by your enemy and also will help you dodge bullets. '));
  _tipList.add(TipCard('Glide to avoid damage when falling from a height', 'Your character has the ability to glide in the air and land safely when he jumps from a height. This helps you to incur no damage as you fall from a height and will also help you get out of tricky situations during a gunfight.'));
  return _tipList;
}


class TipCard {
  String title;
  String description;
  TipCard (this.title, this.description);
}