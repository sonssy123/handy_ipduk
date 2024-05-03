import 'package:flutter/material.dart';
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

class FetchData {
  Future<Artist?> fetchData() async {
    try {
      final collection = FirebaseFirestore.instance.collection('tb_artist');
      final snapshot = await collection.doc('profile').get();
      if (snapshot.exists) {
        final artist = Artist.fromFirestore(snapshot);
        return artist;
      } else {
        throw Exception('사용 가능한 데이터가 없습니다');
      }
    } catch (e) {
      throw Exception('데이터를 불러오는 중 이슈가 발생했습니다: $e');
    }
  }
}

class FirebaseFirestoreScreen extends StatefulWidget {
  const FirebaseFirestoreScreen({super.key});

  @override
  State<FirebaseFirestoreScreen> createState() =>
      _FirebaseFirestoreScreenState();
}

class _FirebaseFirestoreScreenState extends State<FirebaseFirestoreScreen> {
  late Future<Artist?> futureArtist;

  @override
  void initState() {
    super.initState();
    futureArtist = FetchData().fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('artist information 화면')),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: FutureBuilder<Artist?>(
                      future: futureArtist,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          final artist = snapshot.data!;
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                '아티스트 정보',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 8, 236, 205),
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('ID: ${artist.id}'),
                              Text('Name: ${artist.name}'),
                              Text('Type: ${artist.type}'),
                              Text('URL: ${artist.url}'),
                              Image.network(
                                artist.url,
                                fit: BoxFit.cover,
                              ),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          return Text('오류 발생: ${snapshot.error}');
                        } else {
                          return const Text('사용 가능한 데이터가 없습니다');
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
