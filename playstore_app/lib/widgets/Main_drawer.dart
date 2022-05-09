import 'package:flutter/material.dart';
import 'package:playstore_app/pastpaper%20folder/pastpapers.dart';
import '/screens/ContactUs.dart';
import '/screens/Homepage.dart';
import '/screens/SyllabusScreen.dart';
import '../screens/FormulaScreen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);
  Widget listtilecreator(
      IconData icon, String text, void Function()? navigate) {
    // check for void function
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
      ),
      onTap: navigate,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 300,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 150,
            // width: double.infinity,
            color: Colors.amber[200],
            child: const Text(
              'Hello There',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          listtilecreator(Icons.home, 'HomePage', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          }),
          listtilecreator(Icons.file_copy, "Syllabus", () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Syllabus()));
          }),
          listtilecreator(Icons.file_copy, "Formula", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FormulaScreen()));
          }),
          listtilecreator(Icons.file_copy, "Past Papers", () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Pastpaper()));
          }),
          listtilecreator(Icons.contact_mail_outlined, 'Contact Us', () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ContactUs()));
          }),
        ],
      ),
      // ),
    );
  }
}
