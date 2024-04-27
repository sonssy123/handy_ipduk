enum ImageId {
  image_0,
  image_1,
  image_2,
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
      case ImageId.image_2:
        return "https://i.pinimg.com/236x/97/ae/1e/97ae1e384caa9cba1c42d8def8d34080.jpg";
      default:
        return "";
    }
  }
}
