import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_explanation/application/example_provider.dart';
import 'package:udemy_explanation/router/router.gr.dart';

class FirstPage extends StatefulWidget {
  FirstPage({Key key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ExampleProvider>(
      builder: (context, exampleProvider, _) => Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(exampleProvider.getDataString.toString(),
                style: TextStyle(fontSize: 30)),
            Center(
              child: RaisedButton(
                onPressed: () => onButtonClicked(exampleProvider),
                child: Text("Go To Second Page"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void onButtonClicked(ExampleProvider exampleProvider) {
    // context.read<ExampleProvider>().setDataString("anan");
    exampleProvider.setDataString("asdf");
    ExtendedNavigator.root.push(Routes.secondPage,
        arguments: SecondPageArguments(nama: "anan", umur: 132));
  }
}
