import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double borderWidth;
  final Color borderColor;

  const ProfileImage({
    super.key,
    required this.imageUrl,
    required this.width,
    required this.borderWidth,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: width,
      child: Center(
        child: ClipOval(
          child: SizedBox.fromSize(
            size: Size.fromRadius(width / 2),
            child: Stack(children: [
              Image.network(
                imageUrl,
                width: width,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: borderWidth,
                    color: borderColor,
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
