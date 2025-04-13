import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/ui/common_search_input.dart';
import '../../core/constants/color.dart';
import '../../core/constants/size.dart';

class SearchDetailScreen extends HookConsumerWidget {
  const SearchDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppColor.mainGreen,
      appBar: AppBar(
        backgroundColor: AppColor.mainGreen,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColor.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          '검색',
          style: TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          CommonSearchInput(
            hintText: '오늘은 어디서 공부를 해 볼까요?',
            iconColor: AppColor.iconGreen,
            autofocus: true,
            textInputAction: TextInputAction.search,
            onChanged: (value) {
              // 실시간 검색 로직
            },
            onSubmitted: (value) {
              // 검색 실행 로직
            },
          ),

          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              margin: const EdgeInsets.only(top: 10),
              padding: EdgeInsets.symmetric(
                horizontal: AppSizes.gapL,
                vertical: AppSizes.gapL,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 최근 검색어 헤더
                  const Text(
                    '최근 검색어',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),

                  // 최근 검색어 목록 예시
                  Expanded(
                    child: ListView(
                      children: const [
                        _SearchHistoryItem(text: '스타벅스 역삼점'),
                        _SearchHistoryItem(text: '카페 광화문'),
                        _SearchHistoryItem(text: '스터디 카페 강남'),
                        _SearchHistoryItem(text: '24시 카페'),
                        _SearchHistoryItem(text: '조용한 카페'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchHistoryItem extends StatelessWidget {
  final String text;

  const _SearchHistoryItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          const Icon(Icons.history, size: 18, color: Colors.grey),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, size: 18, color: Colors.grey),
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () {
              // 검색 기록 삭제 로직
            },
          ),
        ],
      ),
    );
  }
}
