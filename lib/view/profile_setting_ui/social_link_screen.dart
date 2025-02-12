import 'package:flutter/material.dart';
import 'package:scout_app/utils/custom_app_bar.dart';

class SocialLinkScreen extends StatelessWidget {
  const SocialLinkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, "Social Links"),
    );
  }
}
