import 'package:flutter/material.dart';

class ImagesScrollHorizontal extends StatefulWidget {
  const ImagesScrollHorizontal({super.key});

  @override
  State<ImagesScrollHorizontal> createState() => _ImagesScrollHorizontalState();
}

class _ImagesScrollHorizontalState extends State<ImagesScrollHorizontal> {

  List images = [
    'assets/images/banner.jpg',
    'assets/images/banner.jpg',
    'assets/images/banner.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Image.asset(images[index]);
          }
      ),
    );
  }
}
