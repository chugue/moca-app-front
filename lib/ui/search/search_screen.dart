import 'package:flutter/material.dart';
import 'package:moca/ui/search/widgets/current_location.dart';
import 'package:moca/ui/search/widgets/filter_options.dart';
import 'package:moca/ui/search/widgets/hot_cafes_section.dart';
import 'package:moca/ui/search/widgets/nearby_cafes_section.dart';
import 'package:moca/ui/search/widgets/region_selector.dart';
import 'package:moca/ui/search/widgets/search_app_bar.dart';
import 'package:moca/ui/search/widgets/search_input.dart';
import '../core/constants/color.dart';
import '../core/ui/bottom_navigation.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.mainGreen,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: const [
                SearchAppBar(),
                SearchInput(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: SingleChildScrollView(
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 90),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: const [
                            SizedBox(height: 70),
                            CurrentLocation(),
                            FilterOptions(),
                            NearbyCafesSection(),
                            HotCafesSection(),
                            SizedBox(height: 70),
                          ],
                        ),
                      ),
                    ),
                    const RegionSelector(),
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: BottomNavigation(),
            ),
          ],
        ),
      ),
    );
  }
}
