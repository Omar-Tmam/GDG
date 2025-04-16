import 'package:animation/widgets/custom_app_bar.dart';
import 'package:animation/widgets/teams_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        TeamsListView(),
      ],
    );
  }
}
