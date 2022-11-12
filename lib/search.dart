import 'package:country_app/view_model/country_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:provider/provider.dart';

import 'model/country_model/country_model.dart';

class SearchCountrty extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    var viewModel = Provider.of<CountryViewModel>(context);
    return FutureBuilder<List<CountryModel>>(
        future: viewModel.getCountries(query: query),
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
              groupComparator: (value1, value2) => value2.compareTo(value1),
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
                              color: const Color.fromRGBO(102, 112, 133, 1),
                              fontWeight: FontWeight.w400),
                        )
                      : const Text(""),
                );
              },
            );
          }
          return Container();
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   var viewModel = Provider.of<CountryViewModel>(context);
    return FutureBuilder<List<CountryModel>>(
        future: viewModel.getCountries(query: query),
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
              groupComparator: (value1, value2) => value2.compareTo(value1),
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
                              color: const Color.fromRGBO(102, 112, 133, 1),
                              fontWeight: FontWeight.w400),
                        )
                      : const Text(""),
                );
              },
            );
          }
          return Container();
        });
   
  }
}
