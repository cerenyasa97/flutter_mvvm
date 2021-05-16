import 'package:first_trial/view_model/home_page_view_model.dart';
import 'package:first_trial/widgets/people_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageView extends StatefulWidget {
  @override
  _HomePageViewState createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  HomePageViewModel hpvm;

  void didChangeDependencies() {
    hpvm = Provider.of<HomePageViewModel>(context);
    if (hpvm.peopleList.isEmpty) {
      hpvm.getPeopleList(context);
    }
    debugPrint(hpvm.peopleList.toString());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MVVM Trial"),
      ),
      body: PeopleListWidget(),
    );
  }
}
