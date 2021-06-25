import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japan_tourism/item_card.dart';
import 'package:japan_tourism/item_place.dart';
import 'package:japan_tourism/model/japan_place.dart';

import 'detail_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://avatar.cdnpk.net/7740957.jpg'),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ),
                                Text(
                                  'Bagas Hariyanto',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans', fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Text(
                  'Recommended',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: japanPlaceList.length,
                    itemBuilder: (BuildContext context, int index) {
                      final JapanPlace place = japanPlaceList[index];
                      return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return DetailScreen(
                                place: place,
                              );
                            }));
                          },
                          child: ItemCard(
                            place: place,
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Text(
                  'Destination',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 350,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final JapanPlace place = japanPlaceList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen(place: place);
                          }));
                        },
                        child: ItemPlace(
                          place: place,
                        ),
                      );
                    },
                    itemCount: japanPlaceList.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
