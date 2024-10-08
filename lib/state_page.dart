import 'package:flutter/material.dart';

class StatePage extends StatefulWidget {
  const StatePage({super.key});

  @override
  State<StatePage> createState() => _StatePageState();
}

class _StatePageState extends State<StatePage> {

  int angkaSaatIni = 0;

  tambahSatu(){
    setState(() {
      angkaSaatIni++;
    });
  }

  kurangSatu(){
    setState(() {
      angkaSaatIni--;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Building StatePage');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Angka Saat Ini :'),
            Text(angkaSaatIni.toString(), style: TextStyle(
              fontSize: 30
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: (){
                      kurangSatu();
                    },
                    child: Text('-1')
                ),
                ElevatedButton(
                    onPressed: (){
                      tambahSatu();
                    },
                    child: Text('+1')
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
