import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(55.5);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Image.asset('images/appicon.png', scale: 0.8),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      backgroundColor: Colors.pink.shade50,
      title: Text(
        'Self-Help-Group Guide',
        style: TextStyle(
          fontFamily: 'Lobster',
          fontSize: 21,
          //fontWeight: FontWeight.bold,
          color: Color(0xFF0A0D22),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.menu),
          color: Colors.black54,
          onPressed: () {
            print("Menu button is pressed.");
          },
        ),
      ],
    );
  }
}
