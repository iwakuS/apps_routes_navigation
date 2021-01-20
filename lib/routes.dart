import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'apps/simple_app/counter.dart';
import 'screens/home_screen.dart';

class RouteGenerator {
  static const String homeScreen = '/';

  /// 1.ナビゲーション用の固有名追加
  static const String counter = '/counter';

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      /// 2.ナビゲーション用の遷移追加
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      case counter:
        return MaterialPageRoute(
          builder: (_) => const Counter(),
        );
      // 該当しない場合エラー
      default:
        throw RouteException('Route not found');
    }
  }
}

class RouteException implements Exception {
  final String message;
  const RouteException(this.message);
}
