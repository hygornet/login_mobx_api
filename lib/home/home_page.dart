import 'package:flutter/material.dart';
import 'package:formlogin/home/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.network(
                  "https://aux.iconspalace.com/uploads/12169276551941958109.png"),
              accountName: Text('Hygor'),
              accountEmail: Text('santos.hygor@outlook.com.br'),
            ),
            ListTile(
              title: Text('Logout'),
              trailing: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
