import 'package:country_app/model/country_model/country_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.country});
  final CountryModel country;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  late PageController _pageController;
  var activePage = 0;

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List images = [
      widget.country.flags!.png,
      widget.country.coatOfArms!.png,
    ];

    List<Widget> indicators(imagesLength, currentIndex) {
      return List<Widget>.generate(imagesLength, (index) {
        return Container(
          margin: const EdgeInsets.all(3),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: currentIndex == index ? Colors.black : Colors.black26,
              shape: BoxShape.circle),
        );
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.country.name!.common}"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.r),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: indicators(images.length, activePage)),
                SizedBox(
                  height: 400.h,
                  child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value) {
                        activePage = value;
                      },
                      itemCount: 2,
                      pageSnapping: true,
                      itemBuilder: (context, pagePosition) {
                        return Container(
                          padding: EdgeInsets.all(10.r),
                          child: Image.network(
                            images[pagePosition],
                           
                          ),
                        );
                      }),
                )
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text("Population:${widget.country.population}",
            style: Theme.of(context).textTheme.headline6,),
             SizedBox(
              height: 4.h,
            ),
            Text("Region:${widget.country.region}",
            style: Theme.of(context).textTheme.headline6),
            SizedBox(
              height: 4.h,
            ),
            const Text("Motto: Virtus unita fortior"),
            SizedBox(
              height: 24.5.h,
            ),
            Text("Language:${widget.country.languages!.eng}",
              style: Theme.of(context).textTheme.headline6,),
            Text("Area:${widget.country.area}",
              style: Theme.of(context).textTheme.headline6,),
            Text("Currency :${widget.country.currencies!.bBD}",
             style: Theme.of(context).textTheme.headline6,),
            Text("Time Zone:${widget.country.timezones!.first}",
             style: Theme.of(context).textTheme.headline6,),    
          ],
        ),
      ),
    );
  }

  List<Widget> indicators(imagesLength, currentIndex) {
    return List<Widget>.generate(imagesLength, (index) {
      return Container(
        margin: const EdgeInsets.all(3),
        width: currentIndex == index ? 30 : 10,
        height: 10,
        decoration: BoxDecoration(
            color: currentIndex == index ? Colors.black : Colors.black26,
            borderRadius: BorderRadius.circular(10)),
      );
    });
  }
}
