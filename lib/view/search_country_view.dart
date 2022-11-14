import 'package:country_app/home/widget/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home/widget/country_list.dart';

class SearchCountryView extends StatefulWidget {
  const SearchCountryView({super.key});

  @override
  State<SearchCountryView> createState() => _SearchCountryViewState();
}

class _SearchCountryViewState extends State<SearchCountryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: const [
            CustomAppbar(),
            CountryList(),
          ],
        ),
      ),
    );
  }
}
