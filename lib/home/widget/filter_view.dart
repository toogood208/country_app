import 'package:country_app/home/model/filter_model.dart';
import 'package:country_app/home/widget/filter_widget.dart';
import 'package:flutter/material.dart';

class FilterView extends StatefulWidget {
  final List<Filter> steps;
  const FilterView({Key? key, required this.steps}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<FilterView> createState() => ResumeViewListState(steps: steps);
}

class ResumeViewListState extends State<FilterView> {
  final List<Filter> _steps;
  ResumeViewListState({required List<Filter> steps}) : _steps = steps;
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _steps[index].isExpanded = !isExpanded;
        });
      },
      children: _steps.map<ExpansionPanel>((Filter step) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
          
            return ListTile(
              title: Text(
                step.header,
                style:Theme.of(context).textTheme.bodyText1
              ),
            );
          },
          body: CheckBoxInListView(
            filters: step.filter,
          ),
          isExpanded: step.isExpanded,
        );
      }).toList(),
    );
  }
}
