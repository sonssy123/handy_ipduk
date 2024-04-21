import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/views/profile_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/shop_view.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cart 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const ShopButton(),
                  const ProfileButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShopButton extends StatelessWidget {
  const ShopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShopView()),
        );
      },
      child: const Text('Shop 화면으로 이동'),
    );
  }
}

class ProfileButton extends StatelessWidget {
  const ProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProfileView()),
        );
      },
      child: const Text('Profile 화면으로 이동'),
    );
  }
}
