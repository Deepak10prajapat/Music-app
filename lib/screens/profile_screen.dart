import 'package:flutter/material.dart';
import 'package:music_player/widgets/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProfilePage();
  }
}

class _ProfilePage extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Save",
                      style: TextStyle(color: Colors.tealAccent[700]),
                    ))
              ],
            ),
            InkWell(
              onTap: () {},
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(65),
                    color: Colors.grey[350]),
                child: const Icon(
                  Icons.person_2_outlined,
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              "Deepak Prajapat",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              width: double.maxFinite,
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
