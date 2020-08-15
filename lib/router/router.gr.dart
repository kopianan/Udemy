// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../presentation/first_page.dart';
import '../presentation/second_page.dart';
import '../presentation/third_page.dart';

class Routes {
  static const String firstPage = '/';
  static const String secondPage = '/second-page';
  static const String thirdPage = '/third-page';
  static const all = <String>{
    firstPage,
    secondPage,
    thirdPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.firstPage, page: FirstPage),
    RouteDef(Routes.secondPage, page: SecondPage),
    RouteDef(Routes.thirdPage, page: ThirdPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    FirstPage: (data) {
      final args = data.getArgs<FirstPageArguments>(
        orElse: () => FirstPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstPage(key: args.key),
        settings: data,
      );
    },
    SecondPage: (data) {
      final args = data.getArgs<SecondPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => SecondPage(
          key: args.key,
          nama: args.nama,
          umur: args.umur,
        ),
        settings: data,
      );
    },
    ThirdPage: (data) {
      final args = data.getArgs<ThirdPageArguments>(
        orElse: () => ThirdPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ThirdPage(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// FirstPage arguments holder class
class FirstPageArguments {
  final Key key;
  FirstPageArguments({this.key});
}

/// SecondPage arguments holder class
class SecondPageArguments {
  final Key key;
  final String nama;
  final int umur;
  SecondPageArguments({this.key, @required this.nama, @required this.umur});
}

/// ThirdPage arguments holder class
class ThirdPageArguments {
  final Key key;
  ThirdPageArguments({this.key});
}
