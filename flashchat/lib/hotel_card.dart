import 'package:flashchat/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({required this.hotelData});
  final Map hotelData;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                spreadRadius: 4,
                blurRadius: 6,
                offset: Offset(0, 3))
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              image: DecorationImage(
                  image: AssetImage(
                    hotelData['picture'],
                  ),
                  fit: BoxFit.cover),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    shape: CircleBorder(),
                    color: Colors.white,
                    onPressed: () {},
                    child: Icon(
                      Icons.favorite_border_rounded,
                      color: d_green,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotelData['title'],
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    '\$' + hotelData['price'],
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ]),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: GoogleFonts.nunito(
                    fontSize: 16,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.place,
                      color: d_green,
                      size: 14,
                    ),
                    Text(
                      hotelData['distance'] + "km to city",
                      style: GoogleFonts.nunito(color: Colors.grey),
                    ),
                  ],
                ),
                Text('per night')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 20,
                      color: d_green,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: d_green,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: d_green,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: d_green,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  hotelData['review'] + "reviews",
                  style: GoogleFonts.nunito(color: Colors.grey, fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
