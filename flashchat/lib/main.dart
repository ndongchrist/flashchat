import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'hotel_Section.dart';
import 'my_app_bar.dart';
import 'search_section.dart';

const Color d_green = Color(0xFF54D3C2);
Future<void> main() async {
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hostels Buildings",
      theme: ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: d_green, primary: d_green),
        primaryColor: d_green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
            HotelSection(),
          ],
        ),
      ),
    );
  }
}
