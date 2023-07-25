import 'package:flutter/material.dart';

class BuscadorWidget extends StatelessWidget {
  const BuscadorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 36,
              child: TextField(
                style: TextStyle(fontSize: 17),
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  filled: true,
                  suffix: Icon(Icons.add),
                  prefixIcon: Icon(Icons.search,
                      color: Theme.of(context).iconTheme.color),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  //fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                  contentPadding: EdgeInsets.zero,
                  //hintText: 'Search',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
