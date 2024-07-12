import 'package:first_flutter_app/models/split_type.dart';
import 'package:first_flutter_app/shared/styled_text.dart';
import 'package:flutter/material.dart';

import '../../theme.dart';

class SplitStyleCard extends StatelessWidget {
  final SplitType splitStyle;
  final VoidCallback onTap;
  final bool selected;

  const SplitStyleCard({
    super.key,
    required this.splitStyle,
    required this.onTap,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: selected ? AppColors.secondaryColor : Colors.transparent,        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              // Split type image
              Image.asset(
                'assets/img/split_type/${splitStyle.image}',
                width: 80,
                colorBlendMode: BlendMode.color,
                color: !selected ? Colors.black.withOpacity(0.8) : Colors.transparent,
              ),
              const SizedBox(width: 10),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    StyledHeading(splitStyle.title),
                    StyledText(splitStyle.description),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
