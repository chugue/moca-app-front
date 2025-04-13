import 'package:flutter/material.dart';
import '../../core/constants/color.dart';
import '../../core/constants/size.dart';
import '../../core/constants/style.dart';

class CafeCard extends StatelessWidget {
  final String name;
  final double rating;
  final String distance;
  final String hours;
  final bool isBookmarked;

  const CafeCard({
    Key? key,
    required this.name,
    required this.rating,
    required this.distance,
    required this.hours,
    required this.isBookmarked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusL),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 카페 이미지
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.borderRadiusL),
                  topRight: Radius.circular(AppSizes.borderRadiusL),
                ),
                child: Container(
                  height: 120,
                  width: double.infinity,
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(
                      Icons.image,
                      size: 40,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              // 카페 정보
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 별점
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppColor.pointYellow,
                          size: 16,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          rating.toString(),
                          style: const TextStyle(
                            fontFamily: AppTextStyle.pretendard,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 6),

                    // 카페 이름
                    Text(
                      name,
                      style: const TextStyle(
                        fontFamily: AppTextStyle.maplestory,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(height: 4),

                    // 거리
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey[600],
                          size: 14,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          distance,
                          style: TextStyle(
                            fontFamily: AppTextStyle.pretendard,
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 2),

                    // 영업시간
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.grey[600],
                          size: 14,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          hours,
                          style: TextStyle(
                            fontFamily: AppTextStyle.pretendard,
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          // 북마크 아이콘
          Positioned(
            top: 10,
            right: 10,
            child: Icon(
              isBookmarked ? Icons.bookmark : Icons.bookmark_border,
              color: isBookmarked ? AppColor.bookmarkGreen : AppColor.grey,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}
