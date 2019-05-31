import 'package:flutter_test/flutter_test.dart';

import '../lib/becompany_rss_service.dart';

void main() {
  test('Test to fetch the BeCompany RSS news.', () {
    final service = BecompanyRssService();
    service.getFeed().then((feed) {
      expect(feed.title, 'BeCompany Blog');
      expect(feed.rights, 'BeCompany GmbH');
    });
  });
}
