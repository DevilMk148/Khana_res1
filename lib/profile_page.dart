import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Map> data = [];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: data.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
          },
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(data[index]['email']),
                Text(data[index]['pass']),
                Text(data[index]['key']),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
