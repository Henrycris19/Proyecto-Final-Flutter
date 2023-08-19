import 'package:flutter/material.dart';

class FoodTile extends StatelessWidget {
  final String src;
  final String foodname;
  final String address;

  const FoodTile({
    Key? key,
    required this.src,
    required this.foodname,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          padding: EdgeInsets.all(12),
          height: 93,
          decoration: BoxDecoration(
              color: Color(0xffcfcece),
              borderRadius: BorderRadius.circular(20)),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                      padding: EdgeInsets.all(0),
                      color: Colors.lightGreen,
                      child: Image(
                        image: NetworkImage(src),
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodname,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500)),
                        Text(address),
                        Text(
                          "• Open Now",
                          style: TextStyle(
                              color: Color(0xff008cfe),
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.star_border_rounded),
          ]),
        ));
  }
}
