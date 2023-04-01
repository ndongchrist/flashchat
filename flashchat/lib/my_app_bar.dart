import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 2.0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey,
          size: 20,
        ),
        onPressed: () {},
      ),
      title: Text(
        "Explore",
        style: GoogleFonts.nunito(
            color: Color.fromARGB(255, 0, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.favorite_outline,
            color: Colors.grey,
            size: 20,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.place,
            color: Colors.grey,
            size: 20,
          ),
        ),
      ],
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(50);
}
