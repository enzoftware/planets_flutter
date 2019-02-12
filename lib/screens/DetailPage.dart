import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Planet detail"),
      ),
      body: Center(
        child: RaisedButton(
            onPressed: () => Navigator.pop(context),
            child: Text("<<< Go back <<<"),
        ),
      ),
    );
  }

}