enum ImageId {
  image_0,
  image_1,
  image_2,
}

class ImageData {
  static String getImageUrl(ImageId id) {
    switch (id) {
      case ImageId.image_0:
        return "https://images.pexels.com/photos/2602745/pexels-photo-2602745.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_1:
        return "https://images.pexels.com/photos/11819989/pexels-photo-11819989.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_2:
        return "https://images.pexels.com/photos/9849371/pexels-photo-9849371.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      default:
        return "";
    }
  }
}
