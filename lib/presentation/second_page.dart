import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy_explanation/application/example_provider.dart';
import 'package:udemy_explanation/router/router.gr.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key, @required this.nama, @required this.umur})
      : super(key: key);
  final String nama;
  final int umur;

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int data1 = 0;

  @override
  void initState() {
    print(context.read<ExampleProvider>().getDataString);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.nama),
      ),
      body: Center(
        child: Text(data1.toString(), style: TextStyle(fontSize: 30)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ExtendedNavigator.root.push(Routes.thirdPage);
        },
      ),
    );
  }
}
