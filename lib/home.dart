import 'package:belajar/info.dart';
import 'package:belajar/profile.dart';
import 'package:belajar/simple_app/home.dart';
import 'package:belajar/state_page.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hallo'),
            Text('Budi'),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                    return Profile();
                  }));
                },
                child: Text('Pindah ke  profile')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                    return Info(nama: 'Budi', umur: 44);
                  }));
                },
                child: Text('Info')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                    return StatePage();
                  }));
                },
                child: Text('Pindah Ke State')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_){
                    return SimpleAppHome();
                  }));
                },
                child: Text('Pindah Ke Simple APP')
            )
          ],
        )
      ),
    );
  }
}
