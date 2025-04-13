import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import '../../core/constants/style.dart';

class FilterOptions extends StatelessWidget {
  const FilterOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 필터 옵션 리스트
    final filterOptions = [
      {'icon': Icons.landscape, 'label': '뷰맛집'},
      {'icon': Icons.remove_red_eye, 'label': '눈치Free존'},
      {'icon': Icons.mood, 'label': '감성충만'},
      {'icon': Icons.access_time, 'label': '24시오픈'},
      {'icon': Icons.local_parking, 'label': '무료주차가능'},
    ];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: filterOptions.map((option) {
          return FilterButton(
            icon: option['icon'] as IconData,
            label: option['label'] as String,
          );
        }).toList(),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const FilterButton({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColor.lightLineGrey,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 24,
            color: AppColor.iconGreen,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          style: TextStyle(
            fontFamily: AppTextStyle.pretendard,
            fontSize: 12,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }
}
