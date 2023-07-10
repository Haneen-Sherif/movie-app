import 'package:flutter/material.dart';
import 'package:project/shared/components/components.dart';
import 'package:project/shared/styles/colors.dart';
import 'package:provider/provider.dart';
import '../../models/items_model.dart';
import '../../provider/cart.dart';
import 'MovieDetails.dart';

class ComedyScreen extends StatelessWidget {
  const ComedyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);

    return Scaffold(
      drawer: MyDrawer(),
      endDrawer: MyEndDrawer(),
      appBar: AppBar(
        title: Text("Comedy"),
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
                        leading: Text(
                            "${ComedyItems[index].price.toString()}\$",
                            style: TextStyle(color: Colors.white)),
                        trailing: IconButton(
                          onPressed: () {
                            value.add(ComedyItems[index]);
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
                                        title: ComedyItems[index].title!)));
                          },
                          child: Image(
                              height: 100.0,
                              image: AssetImage(ComedyItems[index].imgPath!)),
                        ),
                      ),
                    );
                  },
                  itemCount: ComedyItems.length),
            ),
          ],
        ),
      ),
      floatingActionButton: NumberOfProducts(),
    );
  }
}
