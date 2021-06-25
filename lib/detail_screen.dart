import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japan_tourism/favorite_button.dart';
import 'package:japan_tourism/model/japan_place.dart';

class DetailScreen extends StatelessWidget {
  final JapanPlace place;

  DetailScreen({required this.place});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: [
                  Container(
                    height: 350,
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(45)),
                      child: Image.network(
                        place.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.deepOrangeAccent,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 250,
                      left: 24,
                      right: 24,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          place.name,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          place.ticketPrice,
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            shadows: <Shadow>[
                              Shadow(
                                offset: Offset(2.0, 2.0),
                                blurRadius: 3.0,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 32),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: FavoriteButton(),
                          ),
                        ),
                        Text(
                          'About',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(place.about),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Gallery',
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                          height: 150,
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: place.imageUrls.map((url) {
                                return Padding(
                                  padding: const EdgeInsets.all(4),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(url),
                                  ),
                                );
                              }).toList()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: SizedBox(
                    height: 46,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Travel',
                        style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.redAccent),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
