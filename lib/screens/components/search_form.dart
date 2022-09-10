// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:shop/constants.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          // ignore: prefer_const_constructors
          prefixIcon: Padding(
            padding: const EdgeInsets.all(12.0),
            // ignore: prefer_const_constructors
            child: Icon(
              Icons.search,
            ),
          ),
          hintText: 'Search items...',
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding / 2,
              vertical: defaultPadding / 2,
            ),
            child: SizedBox(
              height: 48.0,
              width: 48.0,
              // ignore: duplicate_ignore
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: primaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(defaultBorderRadius),
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.tune,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(defaultBorderRadius),
  borderSide: BorderSide.none,
);
