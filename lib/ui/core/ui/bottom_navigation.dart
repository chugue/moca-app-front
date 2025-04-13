import 'package:flutter/material.dart';
import '../constants/color.dart';
import '../constants/style.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          NavItem(
            icon: Icons.search,
            label: '검색',
            isSelected: true,
          ),
          NavItem(
            icon: Icons.map,
            label: '지도',
            isSelected: false,
          ),
          NavItem(
            icon: Icons.person,
            label: '내 정보',
            isSelected: false,
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;

  const NavItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? AppColor.iconGreen : AppColor.grey,
          size: 24,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontFamily: AppTextStyle.maplestory,
            fontSize: 12,
            color: isSelected ? AppColor.iconGreen : AppColor.grey,
            fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
