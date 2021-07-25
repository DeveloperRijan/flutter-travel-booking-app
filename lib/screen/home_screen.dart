import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_booking_app/constants/color_constant.dart';
import 'package:travel_booking_app/widgets/bottom_navigation_travelkuy.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    //setting up appbar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mBackgroundColor,
        title: SvgPicture.asset('assets/svg/travelkuy_logo.svg'),
        elevation: 0,
      ),

      //setting up backgroun color
      backgroundColor: mBackgroundColor,

      //setting up bottom navigation bar
      bottomNavigationBar: BottomNavigationTravelkuy(),
    );
  }
}
