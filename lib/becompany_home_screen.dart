import 'package:flutter/material.dart';

class BecompanyHomeScreen extends StatelessWidget {
  var news = ['News 1', 'News 2', 'News 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeCompany RSS'),
      ),
      body: ListView.builder(
          itemCount: news.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Card(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(news[index]),
            ));
          }),
    );
  }
}
