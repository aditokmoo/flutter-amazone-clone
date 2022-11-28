import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/constants/global_variables.dart';
import 'package:flutter_amazone_clone/features/account/widgets/product.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  // temporary list
  List list = [
    'https://atstore.ba/wp-content/uploads/2022/03/iphone_13_pro_green_pdp_image_position-1a__wwen_8.jpg',
    'https://m.media-amazon.com/images/I/71u7ZoxwLkL.jpg',
    'https://www.univerzalno.com/wp-content/uploads/2022/03/samsungs22ultra-5.jpg',
    'https://procomp.ba/62315-thickbox_default/gaming-laptop-asus-rog-strix-g513rm-hq156-amd-ryzen-7-16gb-1tb-nvidia-geforce-rtx-3060.jpg',
    'https://m.media-amazon.com/images/I/61FFlMkOxhL.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: const Text(
                'Your Orders',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                right: 15,
              ),
              child: Text(
                'See all',
                style: TextStyle(
                  color: GlobalVariables.selectedNavBarColor,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(
            left: 10,
            top: 20,
            right: 0,
          ),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Product(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
