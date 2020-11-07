import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class LeftPage extends StatefulWidget {
  @override
  _LeftPageState createState() => _LeftPageState();
}

class _LeftPageState extends State<LeftPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: CarouselSlider.builder(
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height,
          aspectRatio: 9 / 16,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          scrollDirection: Axis.vertical,
        ),
        itemCount: _mapName.length,
        itemBuilder: (BuildContext context, int itemIndex) => Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: AssetImage('assets/images/map$itemIndex.jpg'),
                fit: BoxFit.contain,
              )),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  _mapName[itemIndex],
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 40.0),
                ),
                Text(''),
                Icon(
                  Icons.arrow_drop_up,
                  color: Colors.white,
                  size: 60.0,
                )
              ]),
        ),
      ),
    );
  }
}

List<String> _mapName = [
  'Crash',
  'Crossfire',
  'Firing Range',
  'Hijacked',
  'Killhouse',
  'Nuketown',
  'Raid',
  'Standoff',
  'Takeoff',
  'Terminal',
];
