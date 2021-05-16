import 'dart:convert';

import 'package:first_trial/models/person.dart';
import 'package:flutter/material.dart';

class HomePageViewModel extends ChangeNotifier {
  List<Person> peopleList = [];

  getPeopleList(BuildContext context) async {
    String readJson = await DefaultAssetBundle.of(context)
        .loadString("assets/data/people.json");
    var result = json.decode(readJson.toString());
    result.forEach((person) => peopleList.add(Person.fromMap(person)));
    notifyListeners();
  }
}
