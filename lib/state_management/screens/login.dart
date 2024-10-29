import 'package:belajar/state_management/providers/provider_user.dart';
import 'package:belajar/state_management/route_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {

  TextEditingController namaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    debugPrint('Building Login');
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login', style: TextStyle(
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

                //pindah ke halaman home
                Navigator.of(context).pushNamed(
                  RouteState.screenHome
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white
              ),
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
