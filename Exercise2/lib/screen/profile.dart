import 'package:flutter/material.dart';
import 'package:localist/model/image_dialog.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (_) => const ImageDialog(),
                );
              },
              child: const CircleAvatar(
                radius: 70,
                backgroundImage: ExactAssetImage('assets/images/panda.jpg'),
              ),
            ),
            const SizedBox(height: 30),
            itemProfile('Name', 'Panda Him', Icons.person),
            const SizedBox(height: 20),
            itemProfile('Phone', '0911231234', Icons.phone),
            const SizedBox(height: 20),
            itemProfile('Email', 'test123@gmail.com', Icons.email),
            const SizedBox(height: 60),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(15),
                  ),
                  child: const Text('Edit Profile')),
            ),
          ],
        ),
      ),
    );
  }

  // itemProfile(String title, String subtitle, IconData iconData) {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.circular(10),
  //       boxShadow: [
  //         BoxShadow(
  //           offset: const Offset(0, 5),
  //           color: Colors.deepPurple.withOpacity(.2),
  //           spreadRadius: 2,
  //           blurRadius: 10,
  //         ),
  //       ],
  //     ),
  //     child: ListTile(
  //       title: Text(title),
  //       subtitle: Text(subtitle),
  //       leading: Icon(iconData),
  //       trailing: const Icon(Icons.arrow_forward),
  //       tileColor: Colors.white,
  //     ),
  //   );
  // }

  Widget itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 5),
            color: Colors.deepPurple.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(iconData, size: 24.0), // Leading icon
          const SizedBox(width: 20), // Space between icon and text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)), // Title
                const SizedBox(height: 5), // Space between title and subtitle
                Text(subtitle,
                    style: const TextStyle(fontSize: 14)), // Subtitle
              ],
            ),
          ),
        ],
      ),
    );
  }
}
