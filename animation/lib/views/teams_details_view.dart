import 'package:animation/models/team_model.dart';
import 'package:flutter/material.dart';

class TeamDetailsView extends StatelessWidget {
  final TeamModel team;
  const TeamDetailsView({super.key, required this.team});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(team.name)),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Hero(
            tag: team.name,
            child: Image.asset(team.imagePath, height: 200),
          ),
          const SizedBox(height: 20),
          Text(
            team.description,
            style: const TextStyle(
              fontSize: 28,
              fontFamily: 'Ubuntu',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
