import 'package:flutter/material.dart';
import 'package:flutter_application_1/profilepage.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.teal, Color(0xFF7cc59d)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              accountName: Text("Ahbab Sameer"),
              accountEmail: Text("xyz.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage("assets/images/darking.jpg"),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.dashboard, color: Colors.teal),
              title: const Text("Dashboard"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.teal),
              title: const Text("Profile"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.teal),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text("Logout"),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Profilepage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      foregroundColor: Colors.white,
                      fixedSize: Size(130, 30),
                    ),
                    // your action here},
                    child: const Text("Navigation"),
                  ),
                  OutlinedButton(onPressed: () {}, child: Text("No,Click Me")),
                ],
              ),
            ),
          ],
        ),
      ),

      body: Column(
        children: [
          Center(
            child: Text(
              "Welcome to the Homepage!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
          ),

          SizedBox(
            height: 200,
            width: 200,
            child: Card(
              color: Colors.amber,
              child: Center(
                child: Text("Card", style: TextStyle(color: Colors.black)),
              ),
            ),
          ),

          Container(
            height: 200,
            width: 300,
            padding: EdgeInsets.all(20),
            alignment: Alignment.bottomRight,

            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.teal, Color(0xFF7cc59d)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: Border.all(color: Colors.teal, width: 3),
              shape: BoxShape.circle,
              //borderRadius: BorderRadius.circular(12),
            ),
          ),

          Container(
            height: 300,
            width: 500,
            padding: EdgeInsets.all(30),

            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
