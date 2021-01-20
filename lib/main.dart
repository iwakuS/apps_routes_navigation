/// ①アプリのコード配置
// appsディレクトリ下にsimple_app等ディレクトリを作成
// 元々のmain.dartをcounter.dart等にファイル名変更+「void main() => runApp(MyApp());」等は削除
// 各アプリは重複も発生してしまうが、個別ディレクトリ内のみで完結

/// ②アプリの遷移先追加方法
/// 1.ナビゲーション用の固有名追加[routes.dart]
/// 2.ナビゲーション用の遷移追加[routes.dart]
/// 3.遷移するためのボタンを追加[home_screen.dart]

import 'package:flutter/material.dart';

import 'routes.dart';
import 'screens/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => 'Apps',

      /// デバッグの際は以下をhomeScreen→○○に変更すればよい
      initialRoute: RouteGenerator.homeScreen, // routes.dart依存
      onGenerateRoute: RouteGenerator.generateRoute, // routes.dart依存
      home: HomeScreen(),
    );
  }
}
