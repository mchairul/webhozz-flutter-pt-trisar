import 'package:belajar/state_management/providers/provider_setting.dart';
import 'package:belajar/state_management/providers/provider_user.dart';
import 'package:belajar/state_management/route_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('Building Home');
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: context.watch<ProviderSetting>().getAppBarColor,
        actions: [
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(RouteState.screenSetting);
              },
              icon: Icon(Icons.settings)
          ),
          IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(RouteState.screenProfile);
              },
              icon: Icon(Icons.person)
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Halo, ${context.watch<ProviderUser>().nama}')
          ],
        ),
      ),
    );
  }
}
