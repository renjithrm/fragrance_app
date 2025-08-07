import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fragrance_app/ui/common/ui_helpers.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  const AppBarWidget({super.key, required this.userName});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RichText(
            text: TextSpan(
              style: greetingTestStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
                color: Colors.black,
              ),
              children: [
                const TextSpan(text: 'Welcome, '),
                TextSpan(
                  text: '$userName!',
                  style: greetingTestStyle(
                    fontWeight: FontWeight.w600, // semi-bold
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {
              // handle notification click
            },
            icon: const FaIcon(
              FontAwesomeIcons.bell,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
