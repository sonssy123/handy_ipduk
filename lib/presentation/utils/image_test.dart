enum ImageId {
  image_0,
}

class ImageData {
  static String getImageUrl(ImageId id) {
    switch (id) {
      case ImageId.image_0:
        return "artist_profile/테스트1.png";
      default:
        return "";
    }
  }
}
