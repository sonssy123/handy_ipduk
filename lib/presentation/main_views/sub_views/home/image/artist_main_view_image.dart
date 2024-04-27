enum ImageId {
  image_0,
}

class ImageData {
  static String getImageUrl(ImageId id) {
    switch (id) {
      case ImageId.image_0:
        return "https://cafeptthumb-phinf.pstatic.net/MjAyNDA0MjZfMjU1/MDAxNzE0MTE3MjAzNzg0.WstPU-IhEGB1FQXHqkn1I-6SwQMpniLGXbasHB1UsM8g.roWTG9p7a_j8kHyz0fVWQM6Pr7TgGlMMDy6d_7dwN3kg.PNG/image.png?type=w1600";
      default:
        return "";
    }
  }
}
