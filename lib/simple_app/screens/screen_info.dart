import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class ScreenInfo extends StatefulWidget {
  const ScreenInfo({super.key});

  @override
  State<ScreenInfo> createState() => _ScreenInfoState();
}

class _ScreenInfoState extends State<ScreenInfo> {

  int posisiGambar = 0;
  PageController pageController = PageController();

  List images = [
    'assets/images/banner.jpg',
    'assets/images/banner.jpg',
    'assets/images/banner.jpg'
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageListener();
  }

  pageListener() async {
    pageController.addListener((){
      debugPrint(pageController.page!.toString());
      debugPrint('listener');
      setState(() {
        posisiGambar = pageController.page!.toInt();
      });
    });
    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          child: PageView.builder(
              controller: pageController,
              itemCount: images.length,
              itemBuilder: (context, index){
                return Image.asset(images[index]);
              }
          ),
        ),
        DotsIndicator(
          dotsCount: images.length,
          position: posisiGambar,
        )
      ],
    );
  }
}

