import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar(
      {super.key, this.title = '', this.leading, this.titleWidget});

  final String title;
  final Widget? leading;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25 / 2.5),
      child: Stack(
        children: [
          Positioned.fill(
              child: titleWidget == null
                  ? Center(
                      child: Text(title,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.white,
                          )),
                    )
                  : Center(
                      child: titleWidget,
                    )),
          Transform.translate(
              offset: const Offset(-14, 0), child: const BackButton()),
        ],
      ),
    ));
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}
