import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';

class BecompanyRssService {
  final _targetUrl = 'https://www.becompany.ch/en/blog/feed.xml';

  Future<AtomFeed> getFeed() =>
      http.read(_targetUrl).then((xmlString) => AtomFeed.parse(xmlString));
}
