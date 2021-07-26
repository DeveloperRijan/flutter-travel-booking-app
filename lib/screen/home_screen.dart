import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:travel_booking_app/constants/color_constant.dart';
import 'package:travel_booking_app/constants/style_constant.dart';
import 'package:travel_booking_app/models/carousel_model.dart';
import 'package:travel_booking_app/models/popular_detinations_model.dart';
import 'package:travel_booking_app/models/travel_log_model.dart';
import 'package:travel_booking_app/widgets/bottom_navigation_travelkuy.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _current = 0;

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

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

      //body
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            //Promos Section
            Padding(
              padding: EdgeInsets.only(left: 16, bottom: 24),
              child: Text(
                "Hi, Rijan this promos for you!",
                style: mTitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16, right: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _current = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(carousels[index].image),
                                  fit: BoxFit.cover)),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),

            Container(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                      children: map(carousels, (index, image) {
                    return Container(
                      alignment: Alignment.centerLeft,
                      height: 6,
                      width: 6,
                      margin: EdgeInsets.only(right: 8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index ? mBlueColor : mGrayColor),
                    );
                  })),

                  //more
                  Text(
                    "More...",
                    style: mMoreDiscountStyle,
                  )
                ],
              ),
            ),

            //service section
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
              child: Text(
                "Let's Booking!",
                style: mTitleStyle,
              ),
            ),

            //menu list
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16, right: 16, bottom: 12),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderClolor, width: 1)),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_flight_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Flight"),
                                    Text("feel freedom")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderClolor, width: 1)),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_train_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Trains"),
                                    Text("feel freedom")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderClolor, width: 1)),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_hotel_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Hotels"),
                                    Text("feel freedom")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8),
                          padding: EdgeInsets.only(left: 16),
                          height: 64,
                          decoration: BoxDecoration(
                              color: mFillColor,
                              borderRadius: BorderRadius.circular(12),
                              border:
                                  Border.all(color: mBorderClolor, width: 1)),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_car_rental_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Cars"),
                                    Text("feel freedom")
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            //popular destinations
            Padding(
              padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
              child: Text(
                "Popular Destinations!",
                style: mTitleStyle,
              ),
            ),

            Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                height: 140,
                child: ListView.builder(
                  itemCount: populars.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                          height: 140,
                          width: 120,
                          decoration: BoxDecoration(
                            color: mFillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: mBorderClolor, width: 1),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(top: 8, bottom: 16),
                              child: Column(
                                children: [
                                  Image.asset(
                                    populars[index].image,
                                    height: 74,
                                  ),
                                  Text(
                                    populars[index].name,
                                    style: mPopularDestinationTitleStyle,
                                  ),
                                  Text(
                                    populars[index].country,
                                    style: mPopularDestinationSubtitleStyle,
                                  )
                                ],
                              ))),
                    );
                  },
                )),

            //bottom section
            Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 24),
              child: Text("Travel Logs", style: mTitleStyle),
            ),

            Container(
                height: 180,
                child: ListView.builder(
                  padding: EdgeInsets.only(left: 16),
                  scrollDirection: Axis.horizontal,
                  itemCount: travelLogs.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width / 2.5,
                      margin: EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Stack(children: <Widget>[
                            Container(
                                height: 104,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(travelLogs[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                )),

                            //absolute elements
                            Positioned(
                              child: SvgPicture.asset(
                                  "assets/svg/travlog_top_corner.svg"),
                              right: 0,
                            ),
                            Positioned(
                                top: 8,
                                right: 8,
                                child: SvgPicture.asset(
                                    "assets/svg/travelkuy_logo_white.svg")),

                            Positioned(
                              bottom: 0,
                              child: SvgPicture.asset(
                                  "assets/svg/travlog_bottom_gradiant.svg"),
                            ),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              child: Text(
                                "TravelLog " + travelLogs[index].name,
                                style: mTravlogTitleStyle,
                              ),
                            )
                          ]),

                          //bottom little description
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            travelLogs[index].content,
                            maxLines: 3,
                            style: mTravlogContentStyle,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            travelLogs[index].place,
                            style: mTravlogPlaceStyle,
                          )
                        ],
                      ),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
