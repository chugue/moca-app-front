import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecentCafesScreen extends HookConsumerWidget {
  const RecentCafesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cafeMainPhoto = useState("");
    final cafeName = useState("");
    final cafeRate = useState(0);
    final cafeReviewCount = useState(0);

    return const Placeholder();
  }
}
