import 'package:flutter/material.dart';
import 'package:scout_app/model/event_model.dart';

class HomeScreenProvider with ChangeNotifier{
  HomeScreenProvider(){
    debugPrint("\nHome Screen Provider is called!\n");
  }

  EventModel? eventModel;

  final Map<String, dynamic> _demoEvents = {
    "eventList": [
      {
        "imagePath": "assets/images/event/event_01.png",
        "category": [
          "Nightlife",
          "Music",
          "Others"
        ],
        "eventDate": "1 MARCH 2024, 12:00 - 00:00",
        "eventTitle": "Ultra Cape Town",
        "interestedPeople": [
          "Safrid",
          "Wahab",
          "Bashar",
          "Shakin"
        ]
      },
      {
        "imagePath": "assets/images/event/event_02.png",
        "category": [
          "Nightlife",
          "Music",

        ],
        "eventDate": "3 APRIL 2024, 12:00 - 00:00",
        "eventTitle": "Timo ODV - Live at Halo",
        "interestedPeople": [
          "Safrid",
          "Wahab",
          "Bashar",
          "Shakin",
          "Shakin",
          "Shakin",
          "Shakin",
          "Shakin",
        ]
      }
    ]
  };


  Future<void> getEvent() async {
    eventModel = EventModel.fromJson(_demoEvents);
    notifyListeners();
  }

}