import 'package:flutter/material.dart';
import 'package:google_maps_flutter_example/theme/app_color.dart';
import 'package:google_maps_flutter_example/theme/app_theme.dart';

class ServicesCard extends StatefulWidget {
  const ServicesCard({super.key});

  @override
  State<ServicesCard> createState() => _ServicesCardState();
}

class _ServicesCardState extends State<ServicesCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CircleAvatar(
                backgroundColor: AppColors.lightblue,
                radius: 20,
              ),
              const SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Moweb Projects',
                    style: normalBlack.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star_border,
                        size: 10,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 10,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 10,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 10,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 10,
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Black Project Services',
                    style: normalBlack.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'POOL SERVICES',
                    style: normalBlue.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    height: 30,
                    width: 70,
                    decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Center(
                      child: Text(
                        '150.0',
                        style: boldWhite,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
