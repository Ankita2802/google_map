import 'package:flutter/material.dart';
import 'package:google_maps_flutter_example/theme/app_color.dart';
import 'package:google_maps_flutter_example/theme/app_theme.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController searchController;
  void _onSearchChanged(String query) {
    // Implement search logic here
  }

  void _onFilterPressed() {
    // Implement filter logic here
  }

  const SearchWidget({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: searchController,
              onChanged: _onSearchChanged,
              decoration: InputDecoration(
                hintText: 'Search for What you are looking for? ',
                hintStyle: normalBlack.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColors.lightblue,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
                prefixIcon: const Icon(
                  Icons.search_outlined,
                  size: 20,
                  color: AppColors.lightGrey,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Container(
            decoration: const BoxDecoration(
              color: AppColors.darkBlue,
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.filter_list,
                color: Colors.white,
              ),
              onPressed: _onFilterPressed,
            ),
          ),
        ],
      ),
    );
  }
}
