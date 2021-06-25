import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 24,
      backgroundColor: Colors.redAccent,
      child: IconButton(
        icon: Icon(
          isFavorite ? Icons.favorite : Icons.favorite_border,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
      ),
    );
  }
}
