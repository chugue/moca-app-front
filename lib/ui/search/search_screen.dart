import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('검색 페이지'),
      ),
      body: const Center(
        child: Text(
          '검색 페이지 내용',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
