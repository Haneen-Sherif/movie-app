import 'package:flutter/material.dart';
import 'package:project/models/items_model.dart';
import 'package:project/modules/movies/MovieDetails.dart';
import 'package:project/provider/cart.dart';
import 'package:project/shared/components/components.dart';
import 'package:project/shared/styles/colors.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int cntr = 0;

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);
    return Scaffold(
      drawer: MyDrawer(),
      endDrawer: MyEndDrawer(),
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: MyColors.mainColor,
        // actions: [
        //   IconButton(onPressed: () {}, icon: Icon(Icons.category))],
        actions: [
          Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(Icons.category)),
          )
        ],
      ),
      floatingActionButton: NumberOfProducts(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 3,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return GridTile(
                      footer: GridTileBar(
                        title: Text(""),
                        backgroundColor: Colors.black.withOpacity(0.1),
                        leading: Text("${items[index].price.toString()}\$",
                            style: TextStyle(color: Colors.white)),
                        trailing: IconButton(
                          onPressed: () {
                            value.add(items[index]);
                          },
                          icon: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(50),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => movieDetails(
                                        title: items[index].title!)));
                          },
                          child: Image(
                              height: 100.0,
                              image: AssetImage(items[index].imgPath!)),
                        ),
                      ),
                    );
                  },
                  itemCount: items.length),
            ),
          ],
        ),
      ),
    );
  }
}
