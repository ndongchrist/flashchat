import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/song_model.dart';

class SongCard extends StatelessWidget {
  const SongCard({
    super.key,
    required this.song,
  });

  final Song song;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed('/song', arguments: song);
      },
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: MediaQuery.of(context).size.width * 0.45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(song.imageUrl),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 55,
              margin: const EdgeInsets.only(bottom: 10, right: 10),
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(song.title,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    color: Colors.deepPurple.shade800,
                                    fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(song.artist)
                    ],
                  ),
                  Icon(Icons.play_circle, color: Colors.deepPurple.shade800)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
