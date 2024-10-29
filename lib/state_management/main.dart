import 'package:belajar/state_management/providers/provider_setting.dart';
import 'package:belajar/state_management/providers/provider_user.dart';
import 'package:belajar/state_management/route_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainState extends StatelessWidget {
  const MainState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ProviderUser()),
          ChangeNotifierProvider(create: (context) => ProviderSetting())
        ],
      builder: (context, child){
        return const MaterialApp(
          initialRoute: RouteState.screenLogin,
          onGenerateRoute: RouteState.stateRoute,
        );
      },
    );
  }
}
