import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/cart/cart_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/product/product_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/shop_view.dart';

class ShoppingMallView extends StatefulWidget {
  const ShoppingMallView({super.key});

  @override
  State<ShoppingMallView> createState() => _ShoppingMallViewState();
}

class _ShoppingMallViewState extends State<ShoppingMallView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Shopping Mall 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const ProductButton(),
                  const CartButton(),
                  const ShopButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductButton extends StatelessWidget {
  const ProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ProductView()),
        );
      },
      child: const Text('Product 화면으로 이동'),
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
