import 'package:flutter/material.dart';

import '../models/playlist_model.dart';
import '../screens/playlist_screen.dart';

class PlaylistCard extends StatelessWidget {
  const PlaylistCard({
    super.key,
    required this.playlists,
  });

  final List<Playlist> playlists;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.27,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: playlists.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PlaylistScreen();
                  }));
                },
                child: Container(
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.deepPurple.shade600,
                  ),
                  child: ListTile(
                    trailing: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                    ),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/album_pic.jpg'),
                    ),
                    title: Text(playlists[index].title),
                    subtitle: Text(playlists[index].songs.length.toString()),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
