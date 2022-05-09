import 'package:flutter/material.dart';
import '../widgets/Main_drawer.dart';
import '../widgets/PhysicsSyllabus.dart';
import '../widgets/MathSyllabus.dart';

class Syllabus extends StatefulWidget {
  @override
  State<Syllabus> createState() => _SyllabusState();
}

class _SyllabusState extends State<Syllabus> {
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
          children: [PhysicsSyllabus(), MathSyllabus()],
        ),
      ),
    );
  }
}
