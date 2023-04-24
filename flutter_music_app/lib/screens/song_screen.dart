import 'dart:io';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import '../models/song_model.dart';
import '../widgets/background_image.dart';
import '../widgets/player_buttons.dart';
import '../widgets/seekbar.dart';
import 'package:rxdart/rxdart.dart' as rxdart;

class SongScreen extends StatefulWidget {
  const SongScreen({super.key});

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  Song song = Song.songs[0];

  @override
  void initState() {
    super.initState();
    ConcatenatingAudioSource(children: [
      AudioSource.uri(Uri.parse('asset:///${song.Url}')),
    ]);
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  Stream<SeekBarData> get _seekBarDataStream =>
      rxdart.Rx.combineLatest2<Duration, Duration?, SeekBarData>(
          audioPlayer.positionStream, audioPlayer.durationStream, (
        Duration position,
        Duration? duration,
      ) {
        return SeekBarData(
            position: position, duration: duration ?? Duration.zero);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            fit: BoxFit.cover,
            image: AssetImage(song.imageUrl),
          ),
          BackgroundImage(),
          _MusicPlayer(
              audioPlayer: audioPlayer, seekBarDataStream: _seekBarDataStream),
        ],
      ),
    );
  }
}

class _MusicPlayer extends StatelessWidget {
  const _MusicPlayer({
    super.key,
    required this.audioPlayer,
    required Stream<SeekBarData> seekBarDataStream,
  }) : _seekBarDataStream = seekBarDataStream;

  final AudioPlayer audioPlayer;
  final Stream<SeekBarData> _seekBarDataStream;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StreamBuilder<SeekBarData>(
              builder: (context, snapshot) {
                final positionData = snapshot.data;
                return SeekBar(
                    position: positionData?.duration ?? Duration.zero,
                    duration: positionData?.duration ?? Duration.zero,
                    onChangeEnd: (position) {
                      audioPlayer.seek(position);
                    },
                    onChange: (position) {
                      audioPlayer.seek(position);
                    });
              },
              stream: _seekBarDataStream),
          const SizedBox(height: 20),
          PlayerButtons(audioPlayer: audioPlayer),
        ],
      ),
    );
  }
}
