// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/screens/details/components/color_dot.dart';

import '../../models/product.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          // ignore: prefer_const_constructors
          leading: BackButton(
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.favorite,
                color: Colors.redAccent,
                size: 27.0,
              ),
            ),
          ]),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: defaultPadding * 1.5,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(
                defaultPadding,
                defaultPadding * 2,
                defaultPadding,
                defaultPadding,
              ),
              // ignore: prefer_const_constructors
              decoration: BoxDecoration(
                color: Colors.white,
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                  // ignore: prefer_const_constructors
                  topLeft: Radius.circular(
                    defaultBorderRadius * 3,
                  ),
                  // ignore: prefer_const_constructors
                  topRight: Radius.circular(
                    defaultBorderRadius * 3,
                  ),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Text(
                          '\$ ' + product.price.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: defaultPadding,
                      ),
                      // ignore: prefer_const_constructors
                      child: Text(
                          'A Henly shirt is a collarless pullover shirt,  by a round neckline and a placket about 3 to 5 inches (8 to 13 cm ) long and usuallu having 2-5 buttons'),
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'Colors',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      children: [
                        ColorDot(
                          color: Color(0xFFBEE8EA),
                          isActive: false,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xFF141B4A),
                          isActive: true,
                          press: () {},
                        ),
                        ColorDot(
                          color: Color(0xFFF4E5C3),
                          isActive: false,
                          press: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Center(
                      child: Container(
                        width: 200.0,
                        height: 48.0,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: primaryColor,
                            shape: StadiumBorder(),
                          ),
                          // ignore: prefer_const_constructors
                          child: Text(
                            'Add to cart',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
