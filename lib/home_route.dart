import 'package:belajar/info.dart';
import 'package:belajar/routes_app.dart';
import 'package:belajar/state_management/main.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                    RoutesApp.pageProfile
                  );
                },
                child: Text('Pindah ke profile')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                      RoutesApp.pageInfo,
                      arguments: Info(nama: 'Budi', umur: 20)
                  );
                },
                child: Text('Pindah ke info')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                      RoutesApp.pageState
                  );
                },
                child: Text('Pindah ke State')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(
                      RoutesApp.pageSimpleApp
                  );
                },
                child: Text('Pindah ke Simple APP')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_){
                      return MainState();
                    })
                  );
                },
                child: Text('Pindah Ke State Management')
            )
          ],
        ),
      ),
    );
  }
}
