import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;

  NetworkHelper({@required this.url});

  Future getData() async {
    http.Response r = await http.get(this.url);
    if (r.statusCode == 200) {
      return jsonDecode(r.body);
    } else {
      print(r.statusCode);
    }
  }
}
