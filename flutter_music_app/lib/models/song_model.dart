class Song {
  String title;
  String artist;
  String imageUrl;
  String Url;
  Song(
      {required this.Url,
      required this.title,
      required this.artist,
      required this.imageUrl});

  static List<Song> songs = [
    Song(
      title: 'Bohemian Rhapsody',
      artist: 'Queen',
      imageUrl: 'assets/album_pic.jpg',
      Url: 'assets/claudel_song.mp3',
    ),
    Song(
      title: 'Stairway to Heaven',
      artist: 'Led Zeppelin',
      imageUrl: 'assets/album_pic.jpg',
      Url: 'assets/claudel_song.mp3',
    ),
    Song(
      title: 'Hotel California',
      artist: 'Eagles',
      imageUrl: 'assets/album_pic.jpg',
      Url: 'assets/claudel_song.mp3',
    ),
    Song(
      title: 'Sweet Child O\' Mine',
      artist: 'Guns N\' Roses',
      imageUrl: 'assets/album_pic.jpg',
      Url: 'assets/claudel_song.mp3',
    ),
    Song(
      title: 'Smells Like Teen Spirit',
      artist: 'Nirvana',
      imageUrl: 'assets/album_pic.jpg',
      Url: 'assets/claudel_song.mp3',
    ),
  ];
}
