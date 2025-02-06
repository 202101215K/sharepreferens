import 'package:flutter/material.dart';
import 'package:sharepreferens/pages/my_profile_page.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1025469/pexels-photo-1025469.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.amber,
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/2413089/pexels-photo-2413089.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                    Text(
                      "Leonel messi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Administrador",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Myprofile"),
              onTap: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyProfilePage()),
                    );
              },
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text("Portfolio"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Change password"),
              onTap: () {},
            ),
            Divider(
              height: 30.0,
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      );
  }
}