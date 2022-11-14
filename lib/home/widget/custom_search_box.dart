import 'package:country_app/view_model/country_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    Key? key,
    required this.filterController,
  }) : super(key: key);

  final TextEditingController filterController;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CountryViewModel>.reactive(
        viewModelBuilder: () => CountryViewModel(),
        builder: (context, viewModel, child) => Container(
              height: 48.h,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(242, 244, 247, 1),
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
                      controller: filterController,
                      textAlign: TextAlign.center,
                      onChanged: (value) {
                        debugPrint("serchbox: $value");
                      },
                      decoration: InputDecoration.collapsed(
                          hintText: "Search Country",
                          hintStyle: TextStyle(fontSize: 16.sp)),
                    ),
                  )
                ],
              ),
            ));
  }
}
