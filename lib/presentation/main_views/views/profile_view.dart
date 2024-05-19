import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:handy_ipduk/main_screen/login_screen/login_screen_view.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/mileage/mileage_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/my_page/my_page_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/purchase_history/purchase_history_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/cart/cart_view.dart';
import 'package:handy_ipduk/presentation/main_views/views/shop_view.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _myPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MyPageView()),
    );
  }

  Future<void> _logout() async {
    try {
      await _auth.signOut();
      final prefs = await SharedPreferences.getInstance();
      await prefs.clear();
      Navigator.of(_scaffoldKey.currentContext!).pushReplacement(
        MaterialPageRoute(builder: (context) => const MainLoginScreenView()),
      );
    } catch (e) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('Proflie 화면'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: _logout,
            ),
          ],
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: SizeConverter.getHeight(context, 50)),
                    Container(
                      width: SizeConverter.getWidth(context, 200),
                      height: SizeConverter.getHeight(context, 200),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color: const Color.fromARGB(255, 40, 40, 40)),
                        // image: _profileImageUrl.isNotEmpty
                        //     ? DecorationImage(
                        //         image: NetworkImage(_profileImageUrl),
                        //         fit: BoxFit.cover,
                        //       )
                        //     : null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        // _name,
                        '',
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: SizeConverter.getHeight(context, 50)),
                    Container(
                      width: SizeConverter.getWidth(context, 350),
                      height: SizeConverter.getHeight(context, 200),
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(255, 40, 40, 40)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: IconButton(
                                  icon: const Icon(Icons.person),
                                  color: ColorExtension.accentColor,
                                  iconSize: 30,
                                  onPressed: _myPage,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: SizeConverter.getHeight(context, 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: IconButton(
                                  icon: const Icon(Icons.person),
                                  color: ColorExtension.accentColor,
                                  iconSize: 30,
                                  onPressed: () {},
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
          MaterialPageRoute(builder: (context) => MainLoginScreenView()),
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
