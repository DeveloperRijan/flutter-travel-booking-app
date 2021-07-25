import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_booking_app/constants/color_constant.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedIndex = 0;
  var bottomTextStyle =
      GoogleFonts.inter(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: mFillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24))),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? new SvgPicture.asset("assets/icons/home.svg")
                : new SvgPicture.asset("assets/icons/home_colored.svg"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? new SvgPicture.asset("assets/icons/home.svg")
                : new SvgPicture.asset("assets/icons/home_colored.svg"),
            label: "Home",
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: mBlueColor,
        unselectedItemColor: mSubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
