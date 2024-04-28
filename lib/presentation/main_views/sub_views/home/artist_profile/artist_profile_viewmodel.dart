class ArtistProfile {
  final String mainimage;

  ArtistProfile({
    required this.mainimage,
  });

  factory ArtistProfile.fromJson(Map<String, dynamic> json) {
    return ArtistProfile(
      mainimage: json['mainimage'] ?? '', // 'mainimage' 키에 해당하는 값을 가져오기
    );
  }
}
