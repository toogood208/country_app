import 'package:country_app/search.dart';
import 'package:country_app/model/country_model/country_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';
import 'package:textfield_search/textfield_search.dart';

import '../di/service_locator.dart';
import '../view_model/country_view_model.dart';

class SearchCountryView extends StatefulWidget {
  const SearchCountryView({super.key});

  @override
  State<SearchCountryView> createState() => _SearchCountryViewState();
}

class _SearchCountryViewState extends State<SearchCountryView> {
  final TextEditingController filter = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<CountryViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Text(
              "Explore",
              style: GoogleFonts.pacifico(fontSize: 50.sp, color: Colors.black),
            ),
            Column(
              children: [
                Container(),
                SizedBox(
                  width: 10.w,
                  height: 30.h,
                ),
                Container(
                  width: 4.78.w,
                  height: 4.73.h,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 108, 0, 1),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.wb_sunny_outlined,
                  color: Color.fromRGBO(28, 25, 23, 1)))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: Column(
          children: [
            Container(
              height: 48.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 244, 247, 1),
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      showSearch(context: context, delegate: SearchCountrty());
                    },
                    icon: const Icon(Icons.search),
                    color: const Color.fromRGBO(102, 112, 133, 1),
                  ),
                  Expanded(
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration.collapsed(
                          hintText: "Search Country",
                          hintStyle: TextStyle(fontSize: 16.sp)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 73.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                        color: const Color.fromRGBO(169, 184, 212, 1)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        CupertinoIcons.globe,
                        color: Color.fromRGBO(28, 25, 23, 1),
                      ),
                      Center(
                        child: Text(
                          "EN",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 73.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                        color: const Color.fromRGBO(169, 184, 212, 1)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.filter,
                        color: Color.fromRGBO(28, 25, 23, 1),
                      ),
                      Center(
                        child: Text(
                          "Filter",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 54.h,
            ),
            FutureBuilder<List<CountryModel>>(
                future: viewModel.getCountries(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    final error = snapshot.error;
                    return Center(
                      child: Text(
                        "Error: $error",
                      ),
                    );
                  } else if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return const Center(
                        child: Text('No data'),
                      );
                    }

                    return GroupedListView(
                      shrinkWrap: true,
                      elements: snapshot.data!,
                      groupBy: (element) => element.name!.common![0],
                      groupComparator: (value1, value2) =>
                          value2.compareTo(value1),
                      order: GroupedListOrder.DESC,
                      groupSeparatorBuilder: (String value) => Text(
                        value,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: const Color.fromRGBO(102, 112, 133, 1),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      itemBuilder: (context, element) {
                        return ListTile(
                          leading: ClipRect(
                            child: element.flags!.png != null
                                ? Image.network(
                                    element.flags!.png!,
                                    width: 40.w,
                                    height: 40.h,
                                  )
                                : Container(),
                          ),
                          title: Text(
                            element.name!.common ?? "",
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color.fromRGBO(28, 25, 23, 1),
                                fontWeight: FontWeight.w400),
                          ),
                          subtitle: element.capital!.isNotEmpty
                              ? Text(
                                  element.capital![0],
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: const Color.fromRGBO(
                                          102, 112, 133, 1),
                                      fontWeight: FontWeight.w400),
                                )
                              : const Text(""),
                        );
                      },
                    );
                  }
                  return Container();
                }),
          ],
        ),
      ),
    );
  }
}
