import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_explanation/application/example_provider.dart';

import 'router/router.gr.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ExampleProvider()),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          builder: ExtendedNavigator.builder(
            router: Router(),
            builder: (context, extendedNav) => Theme(
              data: ThemeData(
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              child: extendedNav,
            ),
          )),
    );
  }
}
