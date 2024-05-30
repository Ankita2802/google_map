import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter_example/commponets/Featured_card.dart';
import 'package:google_maps_flutter_example/commponets/common_service_card.dart';
import 'package:google_maps_flutter_example/commponets/heading_services.dart';
import 'package:google_maps_flutter_example/commponets/map_containe.dart';
import 'package:google_maps_flutter_example/commponets/serach_field.dart';
import 'package:google_maps_flutter_example/commponets/services_card.dart';
import 'package:google_maps_flutter_example/models/map_service_model.dart';
import 'package:google_maps_flutter_example/provider/map_service_provider.dart';
import 'package:google_maps_flutter_example/theme/app_color.dart';
import 'package:google_maps_flutter_example/theme/app_theme.dart';
import 'package:google_maps_flutter_example/utills/utills.dart';
import 'package:provider/provider.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  ValueNotifier<bool> notifier = ValueNotifier(false);
  late MapProvider provider;
  TextEditingController searchController = TextEditingController();

  bool loading = true, loader = false, paginate = true;
  int page = 1;
  int perPage = 20;
  double radius = 1.0;

  @override
  void initState() {
    provider = Provider.of<MapProvider>(context, listen: false);
    pagination();
    super.initState();
  }

  Future<void> pagination() async {
    if (!paginate) return;
    setState(() {
      loader = true;
    });
    await provider.getMapService(page, perPage, radius).then((value) {
      if (value < 20) paginate = false;
      loader = false;
      perPage += 20;
      loading = false;
      radius = radius;
      if (mounted) setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkBlue,
        title: Text('What you are looking for?', style: boldWhite),
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
          size: 20,
        ),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : RefreshIndicator(
              color: Colors.yellow,
              backgroundColor: Colors.black,
              displacement: 120,
              onRefresh: () async {
                setState(() {
                  loader = false;
                  paginate = true;
                  perPage = 1;
                });
                pagination;
              },
              child: SafeArea(
                child: Scrollbar(
                  child: NotificationListener(
                    onNotification: (notification) => Utils.scrollNotifier(
                      notification,
                      pagination,
                    ),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Selector<MapProvider, List<MapServiceModel>>(
                          selector: (p0, p1) => p1.homeMapList,
                          builder: (context, value, child) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SearchWidget(
                                    searchController: searchController),
                                Slider(
                                  min: 0.0,
                                  max: 15.0,
                                  value: radius,
                                  divisions: 15,
                                  activeColor: AppColors.darkBlue,
                                  thumbColor: AppColors.darkBlue,
                                  label: '${radius.round()}',
                                  onChanged: (value) {
                                    setState(() {
                                      radius = value;
                                      provider.setRadius = radius;
                                      provider.getMapService(
                                        page,
                                        perPage,
                                        radius,
                                      );
                                      log(radius.toString(), name: 'radius');
                                    });
                                  },
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '0Km',
                                        style: normalBlack.copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '15km',
                                        style: normalBlack.copyWith(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                                const MapContaine(),
                                HeadingTile(
                                  text: 'Services',
                                  onTap: () {},
                                ),
                                SizedBox(
                                  height: height * 0.500,
                                  child: ListView.builder(
                                    itemCount: 4,
                                    itemBuilder: (context, index) {
                                      return const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10,
                                          vertical: 10,
                                        ),
                                        child: ServicesCard(),
                                      );
                                    },
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Container(
                                  color: AppColors.lightblue,
                                  height: height * 0.600,
                                  width: width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 30),
                                      HeadingTile(
                                        text: 'Featured',
                                        onTap: () {},
                                      ),
                                      const SizedBox(height: 30),
                                      const FeaturedCard(),
                                    ],
                                  ),
                                ),
                                HeadingTile(
                                  text: 'Common Service',
                                  onTap: () {},
                                ),
                                const SizedBox(height: 30),
                                const CommonServicesCard(),
                                Selector<MapProvider, List<MapServiceModel>>(
                                  selector: (p0, p1) => p1.homeMapList,
                                  builder: (context, value, child) {
                                    return ListView.builder(
                                      shrinkWrap: true,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 20),
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemCount:
                                          value.length + (loader ? 1 : 0),
                                      itemBuilder: (context, index) {
                                        return index == value.length
                                            ? const Center(
                                                child:
                                                    CircularProgressIndicator())
                                            : const Padding(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10),
                                                child: Padding(
                                                  padding: EdgeInsets.all(20.0),
                                                  child: Column(
                                                    children: [
                                                      // Text(value[index].commonServices[0])
                                                    ],
                                                  ),
                                                ),
                                              );
                                      },
                                    );
                                  },
                                ),
                              ],
                            );
                          }),
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
