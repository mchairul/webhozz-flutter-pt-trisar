import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String nama;
  final int umur;
  Info({
    super.key,
    required this.nama,
    required this.umur
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('nama :'),
                Text(nama)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Umur :'),
                Text(umur.toString())
              ],
            )
          ],
        ),
      ),
    );
  }
}
