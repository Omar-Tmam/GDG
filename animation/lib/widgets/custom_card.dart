import 'package:animation/models/team_model.dart';
import 'package:animation/views/teams_details_view.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final TeamModel team;

  const CustomCard({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => TeamDetailsView(team: team),
              ));
        },
        child: Hero(
          tag: team.name,
          child: Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(team.imagePath),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
