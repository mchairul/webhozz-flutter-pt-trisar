import 'package:flutter/material.dart';

class MenuBawah extends StatelessWidget {
  const MenuBawah({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Icon(Icons.card_giftcard),
            Text('promo')
          ],
        ),
        Column(
          children: [
            Icon(Icons.card_giftcard),
            Text('promo')
          ],
        ),
        Column(
          children: [
            Icon(Icons.card_giftcard),
            Text('promo')
          ],
        )
      ],
    );
  }
}
