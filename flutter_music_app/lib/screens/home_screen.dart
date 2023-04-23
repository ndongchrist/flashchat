import 'package:flutter/material.dart';
import 'package:flutter_music_app/models/song_model.dart';

import '../widgets/section_bar.dart';
import '../widgets/song_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  List<Song> songs = Song.songs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade800.withOpacity(0.8),
              Colors.deepPurple.shade200.withOpacity(0.8)
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const CustomAppBar(),
        bottomNavigationBar: CustomBottomNavigationBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome',
                        style: Theme.of(context).textTheme.bodyLarge),
                    const SizedBox(height: 10),
                    Text(
                      'Enjoy your favorite music',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 30),
                    TextField(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    Column(
                      children: [
                        SectionBar(
                          title: "Trending Music",
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.27,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: songs.length,
                            itemBuilder: (context, index) {
                              return SongCard(song: songs[index]);
                            },
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepPurple.shade800,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'favaorite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outlined), label: 'play'),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_outlined), label: 'Profile'),
        ]);
  }
}

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const Icon(Icons.grid_view_rounded),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vecteezy.com%2Ffree-vector%2Favatar&psig=AOvVaw1B5Y2k6H9Ry5Lb5jYiO9lV&ust=1682370759559000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMDqt9P1wP4CFQAAAAAdAAAAABAE'),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(34);
}
