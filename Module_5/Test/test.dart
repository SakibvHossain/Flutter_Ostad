class Media{
  void play(){
    print('Playing media');
  }
}

class Song extends Media{
  late String artist;
  Song(this.artist);

  @override
  void play(){
    print('Playing song by $artist');
  }
}

void main(){
  Media media1 = Song('Anna');
  media1.play();

  Media media2 = Song('Miya');
  media2.play();
}
