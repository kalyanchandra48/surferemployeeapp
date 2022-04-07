import 'package:employee_app/styles/styles.dart';
import 'package:flutter/material.dart';

class TabBarDelegate extends StatelessWidget {
  final TabController? controller;
  final List<String> text;

  const TabBarDelegate({required this.controller, required this.text});

  // @override
  // double get minExtent => kToolbarHeight;

  // @override
  // double get maxExtent => kToolbarHeight;

  @override
  Widget build(
    BuildContext context,
  ) {
    return TabBar(
      padding: const EdgeInsets.only(top: 16, left: 24),
      labelStyle: AppFonts.activeTabTextBB,
      unselectedLabelStyle: AppFonts.inActiveTabTextRB,
      isScrollable: true,
      indicatorWeight: 4,
      labelPadding: const EdgeInsets.only(right: 16),
      indicatorColor: Colors.blue.shade800,
      indicatorSize: TabBarIndicatorSize.tab,
      labelColor: TextColors.activeTabTextColor,
      unselectedLabelColor: TextColors.inActiveTabTextColor,
      controller: controller,
      indicatorPadding: const EdgeInsets.only(
        left: 4,
        right: 16,
        bottom: 0,
      ),
      // key:  PageStorageKey<Type>(TabBar),
      tabs: text
          .map((e) => Tab(
                text: e,
              ))
          .toList(),
    );
  }

  @override
  bool shouldRebuild(covariant TabBarDelegate oldDelegate) {
    return oldDelegate.controller != controller;
  }
}
