class EventModel {
  List<EventList>? eventList;

  EventModel({this.eventList});

  EventModel.fromJson(Map<String, dynamic> json) {
    if (json['eventList'] != null) {
      eventList = <EventList>[];
      json['eventList'].forEach((v) {
        eventList!.add(new EventList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eventList != null) {
      data['eventList'] = this.eventList!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class EventList {
  String? imagePath;
  List<String>? category;
  String? eventDate;
  String? eventTitle;
  List<String>? interestedPeople;

  EventList(
      {this.imagePath,
        this.category,
        this.eventDate,
        this.eventTitle,
        this.interestedPeople});

  EventList.fromJson(Map<String, dynamic> json) {
    imagePath = json['imagePath'];
    category = json['category'].cast<String>();
    eventDate = json['eventDate'];
    eventTitle = json['eventTitle'];
    interestedPeople = json['interestedPeople'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imagePath'] = this.imagePath;
    data['category'] = this.category;
    data['eventDate'] = this.eventDate;
    data['eventTitle'] = this.eventTitle;
    data['interestedPeople'] = this.interestedPeople;
    return data;
  }
}
