import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assest/isha.jpg"),
              ),
            ),
            Text(
              ' Isha Adhikari',
              style: TextStyle(
                // fontFamily: "Pacifico",
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Flutter Developer",
              style: TextStyle(
                // fontFamily: "SourceScansPro",
                fontSize: 30,
                color: Color(0xffd7f7ee),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 200,
              child: Divider(
                height: 10,
                thickness: 2,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      '+977-9861432641',
                      style: TextStyle(
                        color: Colors.teal,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 70,
                width: 350,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.mail,
                      color: Colors.teal,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'ishuadhikari398@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.teal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Card(
            //   shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(14)),
            //   margin: EdgeInsets.symmetric(horizontal: 20),
            //   child: ListTile(
            //     leading: Icon(
            //       Icons.phone,
            //       color: Colors.teal,
            //     ),
            //     title: Text(
            //       '+977-9861432641',
            //       style: TextStyle(
            //         fontSize: 20,
            //         color: Colors.teal,
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
