import 'package:flutter/material.dart';
import 'package:mywidget/home_view.dart';
import 'package:mywidget/view/alert_view.dart';
import 'package:mywidget/view/button_view.dart';
import 'package:mywidget/view/bottom_bar_view.dart';
import 'package:mywidget/view/card_view.dart';
import 'package:mywidget/view/text_field_view.dart';
import 'package:mywidget/view/list_tile_view.dart';
import 'package:mywidget/view/list_view.dart';
import 'package:mywidget/view/typography_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    /// add settings on MaterialPageRoute for which route you want to tracking
    var data = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeView(), settings: settings);
      case '/typography-view':
        return MaterialPageRoute(
            builder: (_) => TypographyView(), settings: settings);
      case '/bottom-app-bar-view':
        return MaterialPageRoute(
            builder: (_) => BottomBarView(), settings: settings);
      case '/button-view':
        return MaterialPageRoute(
            builder: (_) => ButtonView(), settings: settings);
      case '/list-view':
        return MaterialPageRoute(
            builder: (_) => ListDemoView(), settings: settings);
      case '/card-view':
        return MaterialPageRoute(
            builder: (_) => CardDemoView(), settings: settings);
      case '/list-title-view':
        return MaterialPageRoute(
            builder: (_) => ListTitleView(), settings: settings);
      case '/alert-view':
        return MaterialPageRoute(
            builder: (_) => AlertDemoView(), settings: settings);
      case '/text-field-view':
        return MaterialPageRoute(
            builder: (_) => TextFieldDemoView(), settings: settings);
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: Text(settings.name),
            ),
            body: Center(
              child: Text(
                '404 not found',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        );
    }
  }
}
