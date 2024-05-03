import 'package:cloud_firestore/cloud_firestore.dart';

class Artist {
  final int id;
  final String name;
  final String type;
  final String url;

  Artist({
    required this.id,
    required this.name,
    required this.type,
    required this.url,
  });

  factory Artist.fromFirestore(DocumentSnapshot doc) {
    Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    return Artist(
      id: data['id'],
      name: data['name'],
      type: data['type'],
      url: data['url'],
    );
  }
}
