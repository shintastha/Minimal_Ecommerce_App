import 'package:ecommerce_project/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Icon(
                  Icons.shopping_bag,
                  size: 72,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),

                const SizedBox(height: 25),

                // title
                const Text(
                  'Minimal Shop',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                const SizedBox(height: 15),

                // sub title
                Text(
                  'Premium quality products',
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  // textAlign: TextAlign.center,
                ),

                const SizedBox(height: 25),

                // start now button
                MyButton(
                    onTap: () => Navigator.pushNamed(context, '/home_page'),
                    child: Icon(Icons.arrow_forward))
              ],
            ),
          ),
        ));
  }
}
