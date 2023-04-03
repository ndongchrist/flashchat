import 'dart:ui';

import 'package:flashchat/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hotel_card.dart';

class HotelSection extends StatelessWidget {
  HotelSection({
    super.key,
  });
  final List hotelList = [
    {
      'title': 'Grand Royl Hotel',
      'place': 'Cameroon, Dschang',
      'distance': '70',
      'review': '360',
      'picture': 'images/image1.jpg',
      'price': '1005'
    },
    {
      'title': 'Queen Hotel',
      'place': 'Cameroon, Douala',
      'distance': '20',
      'review': '56',
      'picture': 'images/image3.jpeg',
      'price': '289'
    },
    {
      'title': 'Zingana Hotel',
      'place': 'Cameroon, Bafoussam',
      'distance': '30',
      'review': '3600',
      'picture': 'images/image5.jpeg',
      'price': '500'
    },
    {
      'title': 'My Hotel',
      'place': 'Cameroon, Yaounde',
      'distance': '2000',
      'review': '36',
      'picture': 'images/image4.jpeg',
      'price': '20'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "550 hotels found",
                  style: GoogleFonts.nunito(color: Colors.grey, fontSize: 15),
                ),
                Row(
                  children: [
                    Text(
                      "Filters",
                      style:
                          GoogleFonts.nunito(color: Colors.grey, fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.filter_list_outlined,
                          color: d_green,
                        )),
                  ],
                )
              ],
            ),
          ),
          Column(
              children: hotelList.map((hotel) {
            return HotelCard(
              hotelData: hotel,
            );
          }).toList()),
        ],
      ),
    );
  }
}
