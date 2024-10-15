import 'package:belajar/simple_app/screens/screen_home.dart';
import 'package:belajar/simple_app/screens/screen_info.dart';
import 'package:belajar/simple_app/screens/screen_profile.dart';
import 'package:flutter/material.dart';

class SimpleAppHome extends StatefulWidget {
  const SimpleAppHome({super.key});

  @override
  State<SimpleAppHome> createState() => _SimpleAppHomeState();
}

class _SimpleAppHomeState extends State<SimpleAppHome> {
  int currentPage = 0;

  List content = [
    ScreenHome(),
    ScreenInfo(),
    ScreenProfile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple App'),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: content[currentPage],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'Info'
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile'
            )
          ],
        currentIndex: currentPage,
        onTap: (index){
            setState(() {
              currentPage = index;
            });
        },
      ),
    );
  }
}
