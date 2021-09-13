import "package:flutter/material.dart";
import 'package:provider/provider.dart';

class ProviderExample extends StatefulWidget {
  @override
  _ProviderExampleState createState() => _ProviderExampleState();
}

class _ProviderExampleState extends State<ProviderExample> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Data>(
      create: (BuildContext context) {
        return Data();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Provider EXample",
          ),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: LeveOne(),
            ),
            Expanded(
              child: LeveTwo(),
            ),
          ],
        ),
      ),
    );
  }
}

class LeveOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("from level 1 ${Provider.of<Data>(context).data}"),
    );
  }
}

class LeveTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Text("from level 2 ${Provider.of<Data>(context, listen: true).data}"),
    );
  }
}

class Data extends ChangeNotifier {
  String data = "Data been pass from provider ";
}
