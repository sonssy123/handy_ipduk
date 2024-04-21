import 'package:flutter/material.dart';

class PurchaseHistoryView extends StatefulWidget {
  const PurchaseHistoryView({super.key});

  @override
  State<PurchaseHistoryView> createState() => _PurchaseHistoryViewState();
}

class _PurchaseHistoryViewState extends State<PurchaseHistoryView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Purchase History 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
