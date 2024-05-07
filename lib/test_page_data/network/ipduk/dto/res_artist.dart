import 'package:handy_ipduk/test_page_data/network/freezed/artist.dart';

class ResArtist {
  // 서버에서 가져온 data < models < artist
  final List<Artist> activities;
  final String contents;

  ResArtist({required this.activities, required this.contents});

  factory ResArtist.fromJson(Map<String, dynamic> json) {
    final List<dynamic> jsonactivities = json['art'];
    final List<Artist> activities =
        jsonactivities.map((activity) => Artist.fromJson(activity)).toList();
    final String contents = json['contents'];

    return ResArtist(activities: activities, contents: contents);
  }
}























/*

import 'package:flutter_application_heavenly/data/models/artist/artist.dart';

class ResArtist {
  // 서버에서 가져온 data < models < Artist
  final List<Artist> activities;
  final String contents;

  ResArtist({required this.activities, required this.contents});

  factory ResArtist.fromJson(Map<String, dynamic> json) {
    final activities = (json['products'] as List)
        .map((activity) => activity.fromJson(activity))
        .toList();
    return ResArtist(activities: activities, contents: ['contents']);
  }
}

*/
