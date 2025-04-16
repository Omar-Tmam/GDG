import 'package:animation/teams_list.dart';
import 'package:animation/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class TeamsListView extends StatelessWidget {
  const TeamsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: teams.length,
          itemBuilder: (context, index) {
            return CustomCard(team: teams[index]);
          }),
    );
  }
}
