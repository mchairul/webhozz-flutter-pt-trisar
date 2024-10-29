import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/provider_user.dart';
import '../route_state.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController namaController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('Building Profile');
    namaController.text = context.watch<ProviderUser>().getNama;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Edit Nama', style: TextStyle(
                fontSize: 30
            ),),
            TextFormField(
              controller: namaController,
              decoration: const InputDecoration(
                  hintText: 'Nama',
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 10
                  )
              ),
            ),
            ElevatedButton(
              onPressed: (){
                debugPrint('Nama : ${namaController.text}');

                //set nilai nama ke provider
                context.read<ProviderUser>().setNama(namaController.text);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white
              ),
              child: const Text('Simpan'),
            )
          ],
        ),
      ),
    );
  }
}
