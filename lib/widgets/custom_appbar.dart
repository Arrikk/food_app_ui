import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? callback;
  const CustomAppbar(this.leftIcon, this.rightIcon, {this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        right: 25,
        left: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: callback != null ? () => callback!() : null,
              child: _buildAppIcon(leftIcon, callback)),
          _buildAppIcon(rightIcon, callback),
        ],
      ),
    );
  }

  Container _buildAppIcon(IconData icon, Function? callback) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration:
          const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
      child: Icon(
        icon,
        color: Colors.black,
      ),
    );
  }
}
