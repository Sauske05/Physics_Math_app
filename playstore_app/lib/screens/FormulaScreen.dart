import 'package:flutter/material.dart';
import '/widgets/Mathformula.dart';
import '/widgets/Physicsformula.dart';
import '../widgets/Main_drawer.dart';

class FormulaScreen extends StatelessWidget {
  const FormulaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Syllabus'),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.category),
                text: 'Physics',
              ),
              Tab(
                icon: Icon(Icons.star),
                text: 'Maths',
              )
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: const TabBarView(
          children: [PhysicsFormula(), MathFormula()],
        ),
      ),
    );
  }
}
