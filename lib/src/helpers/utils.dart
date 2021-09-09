import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';
import 'package:in_app_review/in_app_review.dart';

void requestReview() async {
  final InAppReview inAppReview = InAppReview.instance;

  if (await inAppReview.isAvailable()) {
    inAppReview.requestReview();
  }
}

void shareApp() {
  Share.share(
    "Take a look at this amazing tamil quotes app, get your daily dose of tamil quotes and poems. https://play.google.com/store/apps/details?id=com.agnii",
  );
}

void launchUrl(BuildContext context) async {
  String _url = "https://www.instagram.com/unique_tamil_quotes/?hl=en";
  // "tel:+95 6380582919";

  await canLaunch(_url)
      ? await launch(_url)
      : ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Something went wrong when launching URL"),
          ),
        );
}
