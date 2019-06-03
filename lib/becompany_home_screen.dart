import 'package:flutter/material.dart';
import 'package:webfeed/webfeed.dart';
import 'package:intl/intl.dart';

import 'webview_container.dart';

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
            final item = feed.items[index];
            return ListTile(
              title: Text(item.title),
              subtitle: Text('Published at ' +
                  DateFormat.yMd().format(DateTime.parse(item.published))),
              contentPadding: EdgeInsets.all(16.0),
              onTap: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => WebViewContainer(
                            item.id.replaceFirst('http', 'https'))));
              },
            );
          }),
    );
  }
}
