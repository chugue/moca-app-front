import 'package:flutter/material.dart';
import 'package:moca/ui/core/constants/style.dart';

class ActivityItem extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  const ActivityItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title, style: AppTextStyle.pageHeadline),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
