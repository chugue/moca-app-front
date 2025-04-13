import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/constants/color.dart';
import '../../core/constants/size.dart';
import '../../core/constants/style.dart';

class CommonSearchInput extends HookConsumerWidget {
  final String hintText;
  final Color? iconColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? margin;
  final double? borderRadius;
  final Function()? onSearchTap;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final VoidCallback? onClearPressed;
  final bool showClearIcon;
  final bool autofocus;
  final TextInputAction? textInputAction;
  final Function(String)? onSubmitted;
  final bool readOnly;
  final VoidCallback? onTap;

  const CommonSearchInput({
    Key? key,
    this.hintText = '검색어를 입력하세요',
    this.iconColor,
    this.backgroundColor,
    this.margin,
    this.borderRadius,
    this.onSearchTap,
    this.onChanged,
    this.controller,
    this.focusNode,
    this.onClearPressed,
    this.showClearIcon = true,
    this.autofocus = false,
    this.textInputAction,
    this.onSubmitted,
    this.readOnly = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController(text: controller?.text);
    final hasText = useState(textController.text.isNotEmpty);

    useEffect(() {
      if (controller != null) {
        textController.text = controller!.text;
      }
      return null;
    }, [controller?.text]);

    useEffect(() {
      void listener() {
        hasText.value = textController.text.isNotEmpty;
        if (controller != null) {
          controller!.text = textController.text;
        }
      }

      textController.addListener(listener);
      return () => textController.removeListener(listener);
    }, [textController]);

    // readOnly 모드에서는 전체 컨테이너를 탭 가능하게 변경
    if (readOnly && onTap != null) {
      return GestureDetector(
        onTap: onTap,
        child: buildContainer(context, textController, hasText),
      );
    }

    return buildContainer(context, textController, hasText);
  }

  // UI 컨테이너 빌드 메서드
  Widget buildContainer(BuildContext context, TextEditingController textController, ValueNotifier<bool> hasText) {
    return Container(
      margin: margin ?? EdgeInsets.symmetric(horizontal: AppSizes.gapL, vertical: AppSizes.gapM),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColor.white,
        borderRadius: BorderRadius.circular(borderRadius ?? AppSizes.borderRadiusXXL),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(5),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(width: AppSizes.gapL),
          Icon(
            Icons.search,
            color: iconColor ?? AppColor.iconGreen,
            size: 24,
          ),
          SizedBox(width: AppSizes.gapM),

          Expanded(
            child: TextField(
              controller: textController,
              focusNode: focusNode,
              onChanged: (value) {
                hasText.value = value.isNotEmpty;
                if (onChanged != null) {
                  onChanged!(value);
                }
              },
              onTap: readOnly && onTap != null ? onTap : onSearchTap,
              autofocus: autofocus,
              textInputAction: textInputAction,
              onSubmitted: onSubmitted,
              readOnly: readOnly,
              enabled: !readOnly,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  fontFamily: AppTextStyle.pretendard,
                  color: Colors.grey[500],
                  fontSize: 14,
                ),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: AppSizes.gapM),
              ),
            ),
          ),

          if (hasText.value && showClearIcon && !readOnly)
            GestureDetector(
              onTap: onClearPressed ?? () {
                textController.clear();
                hasText.value = false;
                if (onChanged != null) {
                  onChanged!('');
                }
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: AppSizes.gapS, horizontal: AppSizes.gapL),
                decoration: BoxDecoration(
                  color: AppColor.inputGrey,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.close,
                  color: Colors.grey,
                  size: 20,
                ),
              ),
            ),
          SizedBox(width: hasText.value && showClearIcon && !readOnly ? AppSizes.spacingS : AppSizes.gapL),
        ],
      ),
    );
  }
}
