import 'package:flutter/material.dart';
import 'package:japan_tourism/model/japan_place.dart';

class ItemCard extends StatelessWidget {
  final JapanPlace place;

  ItemCard({required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 160,
      child: Stack(
        children: [
          SizedBox(
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(26)),
              child: Image.network(
                place.imageAsset,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 12, right: 12, top: 110, bottom: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
                Text(
                  place.ticketPrice,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    shadows: <Shadow>[
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
