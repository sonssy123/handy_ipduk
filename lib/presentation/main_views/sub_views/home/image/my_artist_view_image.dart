enum ImageId {
  image_0,
  image_1,
  name_0,
}

class ImageData {
  static String getImageUrl(ImageId id) {
    switch (id) {
      case ImageId.image_0:
        return "https://cafeptthumb-phinf.pstatic.net/MjAyNDA0MjVfNjIg/MDAxNzE0MDI0NTUwNzA1.NgeMTRXCKvfRqTajCixM3p7WnH22sCQZlV9wS0Qf9OIg.0VeC2mgAKUvbkdODvhGkbzM67JlM9HMhvzpZdUcQj94g.PNG/image.png?type=w1600";
      case ImageId.image_1:
        return "https://cafeptthumb-phinf.pstatic.net/MjAyNDA0MjVfNjIg/MDAxNzE0MDI0NTUwNzA1.NgeMTRXCKvfRqTajCixM3p7WnH22sCQZlV9wS0Qf9OIg.0VeC2mgAKUvbkdODvhGkbzM67JlM9HMhvzpZdUcQj94g.PNG/image.png?type=w1600";
      case ImageId.name_0:
        return "ALECE";
      default:
        return "";
    }
  }
}
