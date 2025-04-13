import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import '../../core/constants/size.dart';
import '../../core/constants/style.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.gapL, vertical: AppSizes.gapL),
      color: AppColor.mainGreen,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(AppSizes.spacingS),
                child: const Icon(
                  Icons.school,
                  size: 24,
                  color: AppColor.iconGreen,
                ),
              ),
              const SizedBox(width: AppSizes.gapS),
              Stack(
                children: [
                  Text(
                    '모두의카공',
                    style: AppTextStyle.searchHeader.copyWith(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = AppColor.iconGreen,
                    ),
                  ),
                  // 왼쪽 그림자
                  Text(
                    '모두의카공',
                    style: AppTextStyle.searchHeader.copyWith(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = AppColor.iconGreen,
                    ),
                  ),
                  // 위쪽 그림자
                  Text(
                    '모두의카공',
                    style: AppTextStyle.searchHeader.copyWith(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = AppColor.iconGreen,
                    ),
                  ),
                  // 아래쪽 그림자
                  Text(
                    '모두의카공',
                    style: AppTextStyle.searchHeader.copyWith(
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = AppColor.iconGreen,
                    ),
                  ),
                  // 메인 텍스트
                  Text(
                    '모두의카공',
                    style: AppTextStyle.searchHeader.copyWith(
                      color: AppColor.pointYellow,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(AppSizes.spacingS),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusXL),
                ),
                child: const Icon(
                  Icons.notifications_outlined,
                  size: 30,
                  color: AppColor.iconGreen,
                ),
              ),
              SizedBox(width: AppSizes.gapM),
              Container(
                padding: EdgeInsets.all(AppSizes.spacingS),
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(AppSizes.borderRadiusXL),
                ),
                child: const Icon(
                  Icons.person_outline,
                  size: 30,
                  color: AppColor.iconGreen,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
