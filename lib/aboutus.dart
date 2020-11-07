import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'AV Studios',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                  fontSize: 50.0
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'This app is still under development.',
              style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Montserrat',
                  fontSize: 10.0
              ),
            ),
            Text(
              'More changes will be introduced in future updates.',
              style: TextStyle(
                  color: Colors.white70,
                  fontFamily: 'Montserrat',
                  fontSize: 10.0
              ),
            ),
          ],
        ),
      ),
    );
  }
}
