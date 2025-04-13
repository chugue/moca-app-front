import 'package:flutter/material.dart';
import '../../core/constants/style.dart';
import 'cafe_card.dart';

class HotCafesSection extends StatelessWidget {
  const HotCafesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 인기 카페 데이터 더미
    final hotCafes = [
      {
        'name': '스타벅스 도산공원점',
        'rating': 4.9,
        'distance': '1.2km',
        'hours': '07:00 - 23:00',
        'isBookmarked': true,
      },
      {
        'name': '블루보틀 삼청점',
        'rating': 4.7,
        'distance': '800m',
        'hours': '08:00 - 20:00',
        'isBookmarked': false,
      },
      {
        'name': '카페 노티드 한남점',
        'rating': 4.6,
        'distance': '1.5km',
        'hours': '10:00 - 22:00',
        'isBookmarked': true,
      },
    ];

    return Column(
      children: [
        // 헤더
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '이번주 HOT한 카페',
                style: AppTextStyle.sectionHeadline,
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 14,
                color: Colors.grey[800],
              ),
            ],
          ),
        ),

        // 카페 리스트
        SizedBox(
          height: 220,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: hotCafes.length,
            itemBuilder: (context, index) {
              final cafe = hotCafes[index];
              return CafeCard(
                name: cafe['name'] as String,
                rating: cafe['rating'] as double,
                distance: cafe['distance'] as String,
                hours: cafe['hours'] as String,
                isBookmarked: cafe['isBookmarked'] as bool,
              );
            },
          ),
        ),

        // 하단 여백
        const SizedBox(height: 20),
      ],
    );
  }
}
