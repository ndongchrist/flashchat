import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(bottom: 10),
          width: MediaQuery.of(context).size.width * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(song.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomLeft,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(song.title,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.white)),
                  Text(song.artist)
                ],
              ),
              Icon(Icons.play_arrow, color: Colors.white)
            ],
          ),
        )
      ],
    );
  }
}
