import 'package:belajar/simple_app/components/home/images_scroll_horizontal.dart';
import 'package:belajar/simple_app/components/home/menu_atas.dart';
import 'package:belajar/simple_app/components/home/menu_bawah.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Text('Welcome'),
            ),
          ),
          MenuAtas(),
          SizedBox(height: 20,),
          MenuBawah(),

          SizedBox(height: 20,),

          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Column(
              children: [
                Text('Text Promo'),
                SizedBox(height: 10,),
                Image.asset('assets/images/banner.jpg')

              ],
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white
            ),
            child: ImagesScrollHorizontal(),
          ),

        ],
      ),
    );
  }
}
