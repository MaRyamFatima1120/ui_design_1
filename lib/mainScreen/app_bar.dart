import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin:const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children:<Widget> [
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_left)),
            Container(
              width: 30,
              height: 30,

              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),

              ),

            ),
          ],
        ),
      ),
    );
  }
}
