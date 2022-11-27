import 'package:flutter/material.dart';
import 'package:flutter_amazone_clone/features/account/widgets/account_nav_button.dart';

class NavButtons extends StatefulWidget {
  const NavButtons({super.key});

  @override
  State<NavButtons> createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountNavButton(
              text: 'Your Orders',
              onTap: () {},
            ),
            AccountNavButton(
              text: 'Turn Seller',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            AccountNavButton(
              text: 'Log Out',
              onTap: () {},
            ),
            AccountNavButton(
              text: 'Your Wish List',
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
