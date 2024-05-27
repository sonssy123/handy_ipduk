import 'package:flutter/material.dart';
import 'package:handy_ipduk/presentation/extenstions/color_extension.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/advertisement/shop_advertisement.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/image/shop_button_image.dart';
import 'package:handy_ipduk/presentation/loading_bar/loading_bar_animation.dart';
import 'package:handy_ipduk/presentation/main_views/views/calendar_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/profile/cart/cart_view.dart';
import 'package:handy_ipduk/presentation/main_views/sub_views/shop/shopping_mall/shopping_mall_view.dart';
import 'package:handy_ipduk/presentation/utils/size_converter.dart';

class ShopView extends StatefulWidget {
  const ShopView({super.key});

  @override
  State<ShopView> createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  bool _isLoading = false;
  String selectedImage = "";
  String selectedName = "";

  void _navigateToShoppingMall() {
    if (selectedImage.isNotEmpty && selectedName.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });

      Future.delayed(const Duration(seconds: 3), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ShoppingMallView()),
        ).then((_) {
          setState(() {
            _isLoading = false;
          });
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic>? data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>?;

    if (data != null) {
      selectedImage = data['imageId'] ?? '';
      selectedName = data['name'] ?? '';
    }
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text('Black Swan'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConverter.getHeight(context, 20),
                  ),
                  Container(
                    constraints: BoxConstraints(
                        maxHeight: SizeConverter.getHeight(context, 371)),
                    child: const ShopAdvertisementView(),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 70)),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 27.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'My Artist',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 25)),
                  GestureDetector(
                    onTap: _navigateToShoppingMall,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: SizeConverter.getWidth(context, 340), // 사각형 너비
                          height:
                              SizeConverter.getHeight(context, 110), // 사각형 높이
                          decoration: BoxDecoration(
                            // color: Colors.black,
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                                color: ColorExtension.accentColor,
                                width: SizeConverter.getWidth(
                                    context, 2)), // 박스 테두리 굵기
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 17.0), // 사진 이동
                                child: SizedBox(
                                  width: SizeConverter.getWidth(context, 60),
                                  height: SizeConverter.getWidth(context, 60),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: const Color.fromARGB(
                                            255, 40, 40, 40),
                                        width: 2,
                                      ),
                                    ),
                                    child: selectedImage.isNotEmpty
                                        ? ClipOval(
                                            child: Image.network(
                                              ImageData.getImageUrl(
                                                  ImageId.image_0),
                                              fit: BoxFit.cover,
                                              width: SizeConverter.getWidth(
                                                  context, 60),
                                              height: SizeConverter.getWidth(
                                                  context, 60),
                                            ),
                                          )
                                        : null,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 0.0),
                                child: SizedBox(
                                  width: SizeConverter.getWidth(context, 100),
                                  height: SizeConverter.getHeight(context, 50),
                                  child: Container(
                                    child: selectedName.isNotEmpty
                                        ? Center(
                                            child: Text(
                                              selectedName,
                                              style: const TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          )
                                        : null,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConverter.getHeight(context, 500)),
                ],
              ),
            ),
            if (_isLoading)
              const Center(
                child: LoadingAnimation(),
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
