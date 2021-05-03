import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  //final NotchedShape shape = const CircularNotchedRectangle();
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      
      shape: const CircularNotchedRectangle(),
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              tooltip: 'Home',
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
           // const Spacer(),
            IconButton(
              tooltip: 'Profile',
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
