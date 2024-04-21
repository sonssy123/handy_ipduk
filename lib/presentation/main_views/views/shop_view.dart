import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/cart/cart_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/shopping_mall/shopping_mall_view.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shop 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const ShoppingMallButton(),
                  const CartButton(),
                  const CalendarButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShoppingMallButton extends StatelessWidget {
  const ShoppingMallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShoppingMallView()),
        );
      },
      child: const Text('Shopping Mall 화면으로 이동'),
    );
  }
}

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartView()),
        );
      },
      child: const Text('Cart 화면으로 이동'),
    );
  }
}

class CalendarButton extends StatelessWidget {
  const CalendarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CalendarView()),
        );
      },
      child: const Text('Calendar 화면으로 이동'),
    );
  }
}
