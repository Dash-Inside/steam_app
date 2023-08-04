import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  String discriptionAppBar;
  bool showLeading;

  MyAppBar({
    super.key,
    required this.discriptionAppBar,
    required this.showLeading,
  });

  @override
  Widget build(BuildContext context) {
    // showLeading??
    return Builder(builder: (context) {
      if (showLeading) {
        return AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(
            discriptionAppBar,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded),
          ),
        );
      } else {
        return AppBar(
          backgroundColor: Theme.of(context).colorScheme.secondary,
          title: Text(
            discriptionAppBar,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontSize: 24.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        );
      }
    });
  }
}
