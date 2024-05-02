import 'package:flutter/material.dart';
import 'package:handy_ipduk/test_page_data/data_test.dart';

class ArtistTest extends StatefulWidget {
  const ArtistTest({Key? key}) : super(key: key);

  @override
  State<ArtistTest> createState() => _ArtistTestState();
}

class _ArtistTestState extends State<ArtistTest> {
  final DataTest dataTest = DataTest();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          FutureBuilder(
            future: dataTest.fetchData(),
            builder: (context, AsyncSnapshot<Object?> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator();
              } else {
                if (snapshot.hasError) {
                  return const Text('데이터 오류');
                } else {
                  return Text(snapshot.data.toString());
                }
              }
            },
          ),
        ],
      ),
    );
  }
}
