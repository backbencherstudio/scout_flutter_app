import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scout_app/view_model/event_details_Screen_provider.dart';
import 'package:scout_app/view_model/homeScreenProvider.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Activities",

          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Color(0xff111315),)
        ),
      ),
      body: Consumer<EventDetailsScreenProvider>(
        builder: (_, eventDetailsScreenProvider, child) {
          return ListView.builder(
            itemCount: eventDetailsScreenProvider.detailsOfEvent!.activities!.length,
            itemBuilder: (context, index) {
              final activity = eventDetailsScreenProvider.detailsOfEvent!.activities![index];

              return ListTile(
                title: Text(
                  activity.artistName ?? "N/A",
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(activity.times ?? "N/A"),
              );
            },
          );
        },
      ),
    );
  }
}
