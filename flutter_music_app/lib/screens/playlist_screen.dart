import 'package:flutter/material.dart';
import '../models/models.dart';
import '../models/song_model.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Song song = Song();
    return Container(
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade200.withOpacity(0.8),
              Colors.deepPurple.shade800.withOpacity(0.8),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading:
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          title: Text('Playlist'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 27),
                  height: 325,
                  width: 325,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/album_pic.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 28),
                Text(
                  'Hip-hop R&B Mix',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                ),
                SizedBox(height: 28),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.only(left: 30),
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Text(
                              "Play",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.play_circle_rounded,
                              color: Colors.deepPurple,
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: double.infinity,
                        width: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.deepPurple,
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Shuffle",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.shuffle_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28),
                // Container(
                //   child: ListView.builder(
                //       itemCount: Song.songs/length,
                //       itemBuilder: (context, index) {
                //         return ListTile(
                //           leading: Container(
                //             height: 50,
                //             width: 50,
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(10),
                //               image: DecorationImage(
                //                 image: AssetImage('assets/album_pic.jpg'),
                //                 fit: BoxFit.cover,
                //               ),
                //             ),
                //           ),
                //           title: Text('Song Name'),
                //           subtitle: Text('Artist Name'),
                //           trailing: Text('3:00'),
                //         );
                //       }),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
