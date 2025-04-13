import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../core/ui/common_search_input.dart';
import '../../core/constants/color.dart';

class SearchInput extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final VoidCallback? onClearPressed;

  const SearchInput({
    Key? key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.onClearPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonSearchInput(
      hintText: '오늘은 어디서 공부를 해 볼까요?',
      iconColor: AppColor.iconGreen,
      readOnly: true,
      onTap: () {
        context.push('/search-detail');
      },
    );
  }
}
