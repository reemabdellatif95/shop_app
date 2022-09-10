// ignore_for_file: prefer_const_constructors, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:shop/constants.dart';
import 'package:shop/models/category.dart';
import 'package:shop/models/product.dart';
import 'package:shop/screens/components/new_arrival.dart';
import 'package:shop/screens/components/popular.dart';
import 'package:shop/screens/components/section_title.dart';
import 'components/categories.dart';
import 'components/product_card.dart';
import 'components/search_form.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.sort,
            color: Colors.black54,
            size: 35.0,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.location_on_sharp,
              color: Colors.black54,
              size: 25.0,
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              '15/2 New Texas',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.black54,
              size: 25.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore',
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
              ),
              const Text(
                'best Outfits for you',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: defaultPadding,
                ),
                child: SearchForm(),
              ),
              const Categories(),
              const SizedBox(
                height: defaultPadding,
              ),
              NewArrival(),
              const SizedBox(
                height: defaultPadding,
              ),
              Popular(),
            ],
          ),
        ),
      ),
    );
  }
}


