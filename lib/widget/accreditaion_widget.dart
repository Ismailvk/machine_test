import 'package:flutter/material.dart';

class AccreditationWidget extends StatelessWidget {
  const AccreditationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            Image.network(
              'https://kinsta.com/wp-content/uploads/2020/05/mcdonalds-banner-example.png',
              height: 150,
              width: 150,
            ),
            const SizedBox(width: 10),
            Image.network(
              'https://kinsta.com/wp-content/uploads/2020/05/mcdonalds-banner-example.png',
              height: 150,
              width: 150,
            ),
            const SizedBox(width: 10),
            Image.network(
              'https://kinsta.com/wp-content/uploads/2020/05/mcdonalds-banner-example.png',
              height: 150,
              width: 150,
            )
          ],
        ),
      ),
    );
  }
}
