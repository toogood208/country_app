import 'package:country_app/home/widget/filter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_themes/stacked_themes.dart';

import '../../details/home/details.dart';
import '../../view_model/country_view_model.dart';
import 'close_modal.dart';
import 'custome_option_buttons.dart';

class CountryList extends StatefulWidget {
  const CountryList({
    Key? key,
  }) : super(key: key);

  @override
  State<CountryList> createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        onModelReady: (model) => model.getCountries(),
        viewModelBuilder: () => CountryViewModel(),
        builder: (context, viewModel, child) => viewModel.isBusy
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: getThemeManager(context).isDarkMode? 
                      const Color.fromRGBO(152, 162, 179, 0.2):
                      const Color.fromRGBO(242, 244, 247, 1),
                      borderRadius: BorderRadius.circular(4.r),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.search),
                          color: const Color.fromRGBO(102, 112, 133, 1),
                        ),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.center,
                            onChanged: (value) {
                              debugPrint("serchbox: $value");
                              viewModel.search(value);
                            },
                            decoration: InputDecoration.collapsed(
                                hintText: "Search Country",
                                hintStyle: TextStyle(
                                  fontSize: 16.sp,
                                  color: getThemeManager(context).isDarkMode?
                                   const Color.fromRGBO(234, 236, 240, 1):
                                   const Color.fromRGBO(102, 112, 133, 1)
                                    )
                                   ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomOptionButton(
                        icon: Icons.language,
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20))),
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              builder: (context) {
                                return Container(
                                  padding: EdgeInsets.all(24.r),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Language',
                                            style: Theme.of(context)
                                                .textTheme
                                                .headline4!
                                                .copyWith(
                                                  fontWeight: FontWeight.w700,
                                                ),
                                          ),
                                          const ModalCloseButton()
                                        ],
                                      ),
                                      Expanded(
                                        child: ListView(
                                          children:
                                              viewModel.createLangeuageRadio(),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              });
                        },
                        text: 'EN',
                      ),
                      const Spacer(),
                      CustomOptionButton(
                          text: "Filter",
                          icon: Icons.filter_alt_outlined,
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20))),
                                backgroundColor:
                                    Theme.of(context).scaffoldBackgroundColor,
                                builder: (context) {
                                  return Container(
                                    padding: EdgeInsets.all(24.r),
                                    child: ListView(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Filter',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4!
                                                  .copyWith(
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                            ),
                                            const ModalCloseButton()
                                          ],
                                        ),
                                        
                                        FilterView(steps: viewModel.ff),
                                        SizedBox(
                                          height: 24.h,
                                        ),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Container(
                                                height: 48.h,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                ),
                                                child: const Center(
                                                    child: Text("Reset")),
                                              ),
                                            ),
                                            const Spacer(),
                                            SizedBox(
                                              width: 236.w,
                                              height: 48.h,
                                              child: ElevatedButton(
                                                  onPressed: () {
                                                    viewModel.searchByRegion();
                                                  },
                                                  child: const Text("search")),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                });
                          }),
                    ],
                  ),
                  SizedBox(
                                          height: 16.h,
                                        ),
                  GroupedListView(
                    shrinkWrap: true,
                    elements: viewModel.country,
                    groupBy: (element) => element.name!.common![0],
                    groupComparator: (value1, value2) =>
                        value2.compareTo(value1),
                    order: GroupedListOrder.DESC,
                    groupSeparatorBuilder: (String value) => Text(
                      value,
                      textAlign: TextAlign.left,
                      style:Theme.of(context).textTheme.bodyText1,
                    ),
                    itemBuilder: (context, element) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Details(country: element)));
                        },
                        child: ListTile(
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
                            style: Theme.of(context).textTheme.bodyText1
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
                        ),
                      );
                    },
                  ),
                ],
              ));
  }
}
