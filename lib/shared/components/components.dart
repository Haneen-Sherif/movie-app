import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:project/provider/cart.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  final auth = FirebaseAuth.instance;
  late User signedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    final user = auth.currentUser;
    if (user != null) {
      signedInUser = user;
      print(signedInUser.email);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey[200],
                backgroundImage: AssetImage('assets/images/user.png'),
              ),
              decoration: BoxDecoration(color: Color(0xffDA4C2D)),
              accountName: Text("Welcome"),
              accountEmail: Text(signedInUser.email.toString())),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            title: Text("My Movies"),
            leading: Icon(Icons.production_quantity_limits),
            onTap: () {
              Navigator.pushNamed(context, '/checkout');
            },
          ),
          // ListTile(
          //   title: Text("About"),
          //   leading: Icon(Icons.person),
          //   onTap: () {
          //     Navigator.pushNamed(context, '/about');
          //   },
          // ),
          ListTile(
            title: Text("Logout"),
            leading: Icon(Icons.logout),
            onTap: () {
              auth.signOut();
              Navigator.pushNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}

class MyEndDrawer extends StatelessWidget {
  const MyEndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text("Romance"),
              leading: Icon(Icons.movie_filter_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/romance');
              },
            ),
            ListTile(
              title: Text("Comedy"),
              leading: Icon(Icons.movie_filter_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/comedy');
              },
            ),
            ListTile(
              title: Text("Action"),
              leading: Icon(Icons.movie_filter_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/action');
              },
            ),
            ListTile(
              title: Text("Horror"),
              leading: Icon(Icons.movie_filter_rounded),
              onTap: () {
                Navigator.pushNamed(context, '/horror');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class NumberOfProducts extends StatelessWidget {
  const NumberOfProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);
    return Container(
      child: Stack(
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/checkout');
            },
            child: Icon(Icons.add_shopping_cart),
            backgroundColor: Color(0xffDA4C2D),
          ),
          CircleAvatar(
            backgroundColor: Colors.deepOrange[100],
            child: Text(value.selectedProducts.length.toString()),
            radius: 10,
          ),
        ],
      ),
    );
  }
}
