import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:japan_tourism/model/japan_place.dart';

class ItemPlace extends StatelessWidget {
  final JapanPlace place;

  ItemPlace({required this.place});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.network(
              place.imageAsset,
              fit: BoxFit.fill,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    place.ticketPrice,
                    style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
