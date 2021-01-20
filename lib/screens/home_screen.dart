import 'package:flutter/material.dart';

import '../routes.dart';
import '../widgets/app_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            /// 3.遷移するためのボタンを追加
            AppButton(
              pushName: RouteGenerator.counter,
              buttonText: 'Counter',
            ),
          ],
        ),
      ),
    );
  }
}
