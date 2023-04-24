import 'package:flutter_music_app/models/song_model.dart';

class Playlist {
  final String title;
  final String imageUrl;
  final List<Song> songs;

  Playlist({
    required this.title,
    required this.imageUrl,
    required this.songs,
  });

  static List<Playlist> playlists = [
    Playlist(
      title: 'My Playlist 1',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 2',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 3',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 1',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 2',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 3',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 1',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 2',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 3',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 1',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 2',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 3',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 1',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 2',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
    Playlist(
      title: 'My Playlist 3',
      imageUrl: 'https://source.unsplash.com/random/800x600',
      songs: Song.songs,
    ),
  ];
}
