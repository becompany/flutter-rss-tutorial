import 'package:flutter/material.dart';
import 'package:webfeed/webfeed.dart';

class BecompanyHomeScreen extends StatelessWidget {
  final AtomFeed feed;

  BecompanyHomeScreen(this.feed);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BeCompany RSS'),
      ),
      body: ListView.builder(
          itemCount: feed.items.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return Card(
                child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(feed.items[index].title),
            ));
          }),
    );
  }
}
