import 'dart:convert';
import 'dart:math';

import 'package:apii_special/model/homescreemmode/homescreenmodel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreencontroller with ChangeNotifier {
  List<Sampleresmode> productlist = [];
  fetdata() async {
    var url = Uri.parse("https://fakestoreapi.com/products");
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var decodedata = jsonDecode(response.body);

      productlist = decodedata
          .map<Sampleresmode>((e) => Sampleresmode.fromJson(e))
          .toList();
      print(productlist[1].category);
      notifyListeners();
    }
  }
}
