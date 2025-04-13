import 'package:flutter/material.dart';
import '../../core/constants/style.dart';
import 'cafe_card.dart';

class NearbyCafesSection extends StatelessWidget {
  const NearbyCafesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 카페 데이터 더미
    final cafes = [
      {
        'name': '할리스커피 경성대점',
        'rating': 4.8,
        'distance': '600m',
        'hours': '10:00 - 21:00',
        'isBookmarked': true,
      },
      {
        'name': '할리스커피 경성대점',
        'rating': 4.8,
        'distance': '600m',
        'hours': '10:00 - 21:00',
        'isBookmarked': true,
      },
      {
        'name': '할리스커피 경성대점',
        'rating': 4.7,
        'distance': '700m',
        'hours': '09:00 - 22:00',
        'isBookmarked': false,
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
                '주변 카페 둘러보기',
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
            itemCount: cafes.length,
            itemBuilder: (context, index) {
              final cafe = cafes[index];
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
      ],
    );
  }
}
