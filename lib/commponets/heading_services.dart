import 'package:flutter/material.dart';
import 'package:google_maps_flutter_example/theme/app_color.dart';
import 'package:google_maps_flutter_example/theme/app_theme.dart';

class HeadingTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const HeadingTile({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style:
                normalBlack.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Row(
            children: [
              TextButton(
                onPressed: onTap,
                child: Text('View All', style: normalBlue),
              ),
              const Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: AppColors.darkBlue,
              )
            ],
          )
        ],
      ),
    );
  }
}
