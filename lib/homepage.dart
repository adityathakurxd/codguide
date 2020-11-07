
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_native_admob/flutter_native_admob.dart';
import 'package:flutter_native_admob/native_admob_controller.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _adUnitID = "ca-app-pub-3179934820087088/2202582814";
  final _nativeAdController = NativeAdmobController();

  @override
  void initState() {
    _nativeAdController.reloadAd(forceRefresh: true);
    super.initState();
  }

  @override
  void dispose() {
    _nativeAdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Text(
            '  Weapons',
            style: TextStyle(color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 30.0),
             ),
          CarouselSlider.builder(
            options: CarouselOptions(
              aspectRatio: 4 / 3,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
            ),
            itemCount: _gunName.length,
            itemBuilder: (BuildContext context, int itemIndex) => Container(
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/item$itemIndex.jpg'),
                    fit: BoxFit.contain,
                  )),
              width: MediaQuery.of(context).size.width,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [

                Text(
                  _gunName[itemIndex],
                  style: TextStyle(color: Colors.white,
                  fontFamily: 'ReemKufi',
                  fontSize: 40.0),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              '*This app is supported by ads*',
              style: TextStyle(

                color: Colors.white,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 20.0),
            child: NativeAdmob(
              // Your ad unit id
              adUnitID: _adUnitID,
              numberAds: 3,
              controller: _nativeAdController,
              type: NativeAdmobType.full,
            ),
          ),
        ],
      ),
    );
  }
}

List<String> _gunName = [
  'DR-H',
  'KN44',
  'Man-O-War',
  'QQ9',
  'Chicom',
  'Razorback',
  'DL Q33',
  'Kilo Bolt-Action',
  'KRM-262',
  'BY-15',
  'M4LMG',
  'UL736',
];