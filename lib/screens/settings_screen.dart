import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_player/screens/home_screen.dart';
import 'package:music_player/screens/song_screen.dart';

class Settings extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Settings();
  }
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const SongScreen()));
                });
              },
              icon: const Icon(Icons.arrow_back))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(Icons.place),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Add a place",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  // Container(
                  //   height: 35,
                  //   color: Colors.grey[300],
                  // ),

                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              indent: 50,
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(Icons.edit_document),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Edit Profile",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  // Container(
                  //   height: 35,
                  //   color: Colors.grey[300],
                  // ),

                  const Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              indent: 50,
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(Icons.notifications_sharp),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Notification Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  // Container(
                  //   height: 35,
                  //   color: Colors.grey[300],
                  // ),

                  const Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
            const Divider(
              indent: 50,
              thickness: 1,
            ),
            InkWell(
              onTap: () {
                setState(() {});
              },
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: const Icon(Icons.settings_applications),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  const Text(
                    "Account Settings",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  // Container(
                  //   height: 35,
                  //   color: Colors.grey[300],
                  // ),

                  const Icon(Icons.arrow_forward_ios_rounded),
                ],
              ),
            ),
            const Divider(
              indent: 50,
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
