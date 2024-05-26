class FirebaseStorageImgaeData {
  final String imageData;

  FirebaseStorageImgaeData({
    required this.imageData,
  });

  factory FirebaseStorageImgaeData.fromJson(Map<String, dynamic> json) {
    return FirebaseStorageImgaeData(
      imageData: json['imageData'] ?? '',
    );
  }
}
