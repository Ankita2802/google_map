import 'package:flutter/material.dart';
import 'package:google_maps_flutter_example/theme/app_color.dart';
import 'package:google_maps_flutter_example/theme/app_theme.dart';

class CommonServicesCard extends StatefulWidget {
  const CommonServicesCard({super.key});

  @override
  State<CommonServicesCard> createState() => _CommonServicesCardState();
}

class _CommonServicesCardState extends State<CommonServicesCard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: height * 0.400,
        width: width * 0.500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.240,
              child: Stack(
                // fit: StackFit.expand,
                children: [
                  Container(
                    height: height * 0.200,
                    width: width * 0.700,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(19),
                        topRight: Radius.circular(19),
                      ),
                    ),
                  ),
                  // ClipRRect(
                  //   borderRadius: const BorderRadius.only(
                  //     topLeft: Radius.circular(9),
                  //     topRight: Radius.circular(9),
                  //   ),
                  //   child: CachedNetworkImage(
                  //     memCacheHeight:
                  //         (100 * MediaQuery.of(context).devicePixelRatio).round(),
                  //     fit: BoxFit.cover,
                  //     // imageUrl: widget.couponModel.logoUrl ?? '1',
                  //     imageUrl:
                  //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHJAWyCyZN0QtCYj1Wr3_R4iSxubcGjZEGNw&s',
                  //   ),
                  // ),

                  Positioned(
                    top: 10,
                    left: 10,
                    right: 30,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        color: AppColors.offWhite,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Text(
                        'POOL SERVICES',
                        style: normalBlue,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 130,
                    left: 50,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.darkBlue,
                        borderRadius: BorderRadius.circular(40.0),
                        border: Border.all(color: Colors.white, width: 2),
                      ),
                      child: Text(
                        '1,00,000',
                        style: boldWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
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
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Test Common',
                style: normalBlack.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundColor: AppColors.lightblue,
                    radius: 20,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Moweb Projects',
                    style: normalBlack.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
