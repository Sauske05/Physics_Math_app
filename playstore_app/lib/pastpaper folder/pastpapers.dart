import 'package:flutter/material.dart';
import './Physics_PP_mainscreen.dart';

class Pastpaper extends StatelessWidget {
  const Pastpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            childAspectRatio: 0.80,
          ),
          children: [
            InkWell(
              onTap: (() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PhysicsPastPaper()));
              }),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red[300],
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Center(child: Text('Physics')),
              ),
            ),
            InkWell(
              onTap: (() {}),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red[300],
                      borderRadius: BorderRadius.circular(20.0)),
                  child: const Center(child: Text('Math'))),
            )
          ],
        ));
  }
}
