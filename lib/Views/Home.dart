import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Controllers/HomeController.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) => Scaffold(

        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Name"),
                accountEmail: Text("Email"),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: Text('Home'),
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Home(),
                    )),
              ),
              ListTile(
                leading: const Icon(Icons.account_circle_outlined),
                title: Text('Profile'),
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => Home(),
                )),
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: Text('Notifications'),
                onTap: () {},
              ),

              ListTile(
                leading: const Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () =>
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Home(),
                    )),
              ),
              Divider(color: Colors.black54),
              ListTile(
                leading: const Icon(Icons.logout),
                title: Text('Sign Out'),
                onTap: () {
                  controller.logout();
                },
              ),
            ],
          ),
        ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.blue,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.task),
                label: 'Tasks',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pets),
                label: 'Animals',
              ),
            ],
          ),

            // },
    ),
      );
  }
}
