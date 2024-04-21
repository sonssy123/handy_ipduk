import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/mileage/mileage_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/my_page/my_page_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/purchase_history/purchase_history_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/cart/cart_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/shop_view.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Proflie 화면'),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const LogOutButton(),
                  const MyPageButton(),
                  const MileageButton(),
                  const PurchaseHistoryButton(),
                  const CalendarButton(),
                  const ShopButton(),
                  const CartButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
        );
      },
      child: const Text('Login 화면으로 이동'),
    );
  }
}

class MyPageButton extends StatelessWidget {
  const MyPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyPageView()),
        );
      },
      child: const Text('MyPage 화면으로 이동'),
    );
  }
}

class MileageButton extends StatelessWidget {
  const MileageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MileageView()),
        );
      },
      child: const Text('Mileage 화면으로 이동'),
    );
  }
}

class PurchaseHistoryButton extends StatelessWidget {
  const PurchaseHistoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PurchaseHistoryView()),
        );
      },
      child: const Text('PurchaseHistory 화면으로 이동'),
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
