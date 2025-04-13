import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import '../../core/constants/size.dart';
import '../../core/constants/style.dart';

class CurrentLocation extends StatelessWidget {
  const CurrentLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.gapL, vertical: AppSizes.gapS),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: AppColor.pointYellow,
            size: 20,
          ),
          const SizedBox(width: 6),
          const Text(
            '현재위치',
            style: TextStyle(
              fontFamily: AppTextStyle.pretendard,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(width: 2),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.grey[700],
            size: 16,
          ),
        ],
      ),
    );
  }
}
