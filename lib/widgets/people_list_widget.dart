import 'package:first_trial/view_model/home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PeopleListWidget extends StatelessWidget {
  const PeopleListWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<HomePageViewModel>(
      builder: (context, hpvm, peopleList) {
        if (hpvm.peopleList.isNotEmpty) {
          final peopleList = hpvm.peopleList;
          debugPrint(peopleList.length.toString());
          return ListView.builder(
            itemBuilder: (contex, index) {
              return Card(
                child: ListTile(
                  leading: Icon(
                    Icons.person_outlined,
                    size: 30,
                  ),
                  title: Text(
                    peopleList[index].name + " " + peopleList[index].surname,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  subtitle: Text(
                    peopleList[index].age.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
              );
            },
            itemCount: peopleList.length,
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
