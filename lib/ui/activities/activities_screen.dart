import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:moca/ui/activities/widgets/activities_screen/activity_item.dart';
import 'package:moca/ui/core/constants/color.dart';
import 'package:moca/ui/core/constants/line.dart';
import 'package:moca/ui/core/constants/style.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('내 활동', style: AppTextStyle.sectionHeadline),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ActivityItem(
                title: '최근 본 카페',
                icon: const Icon(Icons.history, color: AppColor.pointYellow),
                onTap: () {},
              ),
              AppLines.thinDivider,
              ActivityItem(
                title: '좋아요',
                icon: const Icon(Icons.favorite, color: AppColor.pointYellow),
                onTap: () {},
              ),
              AppLines.thinDivider,
              ActivityItem(
                title: '스크랩',
                icon: const Icon(Icons.bookmark, color: AppColor.pointYellow),
                onTap: () {},
              ),
              AppLines.thinDivider,
              ActivityItem(
                title: '내 리뷰',
                icon: const Icon(Icons.comment, color: AppColor.pointYellow),
                onTap: () {},
              ),
              AppLines.thinDivider,
            ],
          ),
        ],
      ),
    );
  }
}
