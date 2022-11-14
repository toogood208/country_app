import 'package:flutter/material.dart';

class CheckBoxInListView extends StatefulWidget {
  const CheckBoxInListView({super.key, required this.filters});
  final List<String> filters;

  @override
  CheckBoxInListViewState createState() => CheckBoxInListViewState();
}

class CheckBoxInListViewState extends State<CheckBoxInListView> {
  late List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(widget.filters.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: widget.filters.length,
      itemBuilder: (context, index) {
        return CheckboxListTile(
          title: Text(widget.filters[index], style: Theme.of(context).textTheme.bodyText1,),
          value: _isChecked[index],
          onChanged: (val) {
            setState(
              () {
                _isChecked[index] = val!;
              },
            );
          },
        );
      },
    );
  }
}
