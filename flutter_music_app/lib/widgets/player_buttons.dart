import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PlayerButtons extends StatelessWidget {
  const PlayerButtons({
    super.key,
    required this.audioPlayer,
  });

  final AudioPlayer audioPlayer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StreamBuilder(
          stream: audioPlayer.playerStateStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final playerState = snapshot.data;
              final processingState =
                  (playerState! as PlayerState).processingState;

              if (processingState == ProcessingState.loading ||
                  processingState == ProcessingState.buffering) {
                return Container(
                  height: 64,
                  width: 64,
                  margin: EdgeInsets.all(10),
                  child: CircularProgressIndicator(),
                );
              } else if (!audioPlayer.playing) {
                return IconButton(
                    onPressed: () {
                      audioPlayer.play();
                    },
                    icon: Icon(
                      Icons.play_circle,
                      color: Colors.white,
                      size: 45,
                    ));
              } else if (processingState != ProcessingState.completed) {
                return IconButton(
                    onPressed: () {
                      audioPlayer.pause();
                    },
                    icon: Icon(
                      Icons.pause_circle,
                      color: Colors.white,
                      size: 45,
                    ));
              } else {
                return IconButton(
                    onPressed: () {
                      audioPlayer.seek(Duration.zero,
                          index: audioPlayer.effectiveIndices!.first);
                    },
                    icon: Icon(
                      Icons.replay_circle_filled_outlined,
                      color: Colors.white,
                      size: 45,
                    ));
              }
            } else {
              return CircularProgressIndicator();
            }
          },
        )
      ],
    );
  }
}
