import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:project/shared/components/components.dart';
import 'package:provider/provider.dart';
import '../../models/items_model.dart';
import '../../provider/cart.dart';

class movieDetails extends StatefulWidget {
  const movieDetails({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<movieDetails> createState() => _movieDetailsState();
}

class _movieDetailsState extends State<movieDetails> {
  Item item = Item();
  bool change = true;

  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    item = items.firstWhere((element) => element.title == widget.title);
  }

  @override
  Widget build(BuildContext context) {
    final value = Provider.of<Cart>(context);

    return Scaffold(
        body: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: Image(
                          image: AssetImage(item.imgPath!),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  Navigator.pop(context!);
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Colors.white,
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.grey.shade400.withOpacity(0.5),
                                  shape: CircleBorder(),
                                  elevation: 0,
                                  padding: EdgeInsets.all(10),
                                )),
                            Spacer(),
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    change = !change;
                                  });
                                },
                                child: Icon(
                                  change
                                      ? Icons.favorite_border
                                      : Icons.favorite,
                                  color: Colors.redAccent.shade100,
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Colors.grey.shade400.withOpacity(0.5),
                                  shape: CircleBorder(),
                                  elevation: 0,
                                  padding: EdgeInsets.all(10),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${item.title!}  ${item.price}\$",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            // rate text
                            Text(
                              item.rate!.toString(),
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                            // small start icon
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 23,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              item.type!,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              item.year!,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              item.duration!,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black87.withOpacity(0.8),
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                value.add(item);
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add_shopping_cart,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Add to Cart',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffDA4C2D),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                _showModalBottomSheet(context);
                              },
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.star_outline_outlined,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Rate',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffFFD700),
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          item.description!,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black87.withOpacity(0.8)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: NumberOfProducts());
  }

  void _showModalBottomSheet(BuildContext context) {
    double ratingInner = 3.0;
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              height: 500,
              padding: EdgeInsets.all(10),
              // rating and feedback input
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ios docker bottom line
                    Container(
                      height: 7,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    // rating bar
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        // updateOnDrag: false,
                        // tapOnlyMode: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          setState(() {
                            ratingInner = rating;
                          });
                          print(rating);
                        },
                      ),
                    ),
                    // rate in text
                    Text(
                      '${ratingInner}',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    // feedback input
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextField(
                        maxLines: 5,
                        decoration: InputDecoration(
                          hintText: 'Feedback',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                    // submit button that close the bottom sheet
                    SizedBox(
                        width: MediaQuery.of(context).size.width * .5,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                        )),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
