import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import '../../core/constants/size.dart';
import '../../core/constants/style.dart';

class RegionSelector extends StatelessWidget {
  const RegionSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 지역 리스트
    final regions = ['서울', '부산', '인천', '대구', '대전', '광주', '울산', '세종'];

    return Container(
      height: 140,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        itemCount: regions.length,
        itemBuilder: (context, index) {
          return RegionButton(regionName: regions[index]);
        },
      ),
    );
  }
}

class RegionButton extends StatelessWidget {
  final String regionName;

  const RegionButton({
    Key? key,
    required this.regionName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      margin: EdgeInsets.symmetric(horizontal: AppSizes.spacingM),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusM),
            ),
            child: const Center(
              child: Icon(
                Icons.image,
                size: 40,
                color: Colors.grey,
              ),
            ),
          ),

          Positioned(
            bottom: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: AppColor.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(AppSizes.borderRadiusS),
              ),
              child: Text(
                regionName,
                style: const TextStyle(
                  fontFamily: AppTextStyle.maplestory,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
