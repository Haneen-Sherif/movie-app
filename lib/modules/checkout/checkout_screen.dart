import 'package:flutter/material.dart';
import 'package:project/provider/cart.dart';
import 'package:project/shared/components/components.dart';
import 'package:project/shared/styles/colors.dart';
import 'package:provider/provider.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);
    return Scaffold(
      drawer: MyDrawer(),
      endDrawer: MyEndDrawer(),
      appBar: AppBar(
        title: Text("Checkout"),
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
        padding: EdgeInsets.only(bottom: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: value.selectedProducts.length,
                itemBuilder: (context, index) => Card(
                  child: ListTile(
                    subtitle: Text(
                        "${value.selectedProducts[index].price.toString()}\$"),
                    leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(value.selectedProducts[index].imgPath)),
                    title: Text(value.selectedProducts[index].title),
                    trailing: IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        value.delete(value.selectedProducts[index]);
                      },
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text("Total ${value.price}\$"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    MyColors.mainColor,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
