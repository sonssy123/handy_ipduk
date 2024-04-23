enum ImageId {
  image_0,
  image_1,
  image_2,
  image_3,
  image_4,
  image_5,
  image_6,
  image_7,
  image_8,
  image_9,
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
      case ImageId.image_3:
        return "https://images.pexels.com/photos/13036996/pexels-photo-13036996.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_4:
        return "https://images.pexels.com/photos/9897346/pexels-photo-9897346.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_5:
        return "https://images.pexels.com/photos/14171362/pexels-photo-14171362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_6:
        return "https://images.pexels.com/photos/1493485/pexels-photo-1493485.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_7:
        return "https://images.pexels.com/photos/11339298/pexels-photo-11339298.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_8:
        return "https://images.pexels.com/photos/8837867/pexels-photo-8837867.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      case ImageId.image_9:
        return "https://images.pexels.com/photos/12901051/pexels-photo-12901051.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1";
      default:
        return "";
    }
  }
}
