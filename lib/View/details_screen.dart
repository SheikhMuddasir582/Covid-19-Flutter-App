import 'package:covid_tracker/View/world_states.dart';
import 'package:flutter/material.dart';
class DetailsScreen extends StatefulWidget {
  String image;
  String name;
  int totalCases, totalDeaths, totalRecovered, active, critical, todayRecovered, test;
  DetailsScreen({

    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.active,
    required this.critical,
    required this.todayRecovered,
    required this.test,
  }

      );

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * .067),
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * .06,),
                      ReuseableRow(title: 'Cases', value: widget.totalCases.toString()),
                      ReuseableRow(title: 'Deaths', value: widget.totalDeaths.toString()),
                      ReuseableRow(title: 'Recovered', value: widget.totalRecovered.toString()),
                      ReuseableRow(title: 'Active', value: widget.active.toString()),
                      // ReuseableRow(title: 'Critical', value: widget.critical.toString()),
                      // ReuseableRow(title: 'Today Recovered', value: widget.todayRecovered.toString()),
                      ReuseableRow(title: 'Test', value: widget.test.toString()),

                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                  widget.image,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
