import 'package:belajar/state_management/providers/provider_setting.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Building Setting');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  context.read<ProviderSetting>().setAppBarColor(
                    Colors.red
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white
                ),
                child: Text('Ubah Ke Merah')
            ),
            ElevatedButton(
                onPressed: (){
                  context.read<ProviderSetting>().setAppBarColor(
                    Colors.blue
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                ),
                child: Text('Ubah Ke Biru')
            ),
          ],
        ),
      ),
    );
  }
}
