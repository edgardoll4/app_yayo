import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  // const name({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lorenm Title',
              style: TextStyle(
                  color: Color.fromARGB(253, 244, 240, 240),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            const Text(
              'Lorenm no se que subtitle',
              style: TextStyle(
                  color: Color.fromARGB(253, 244, 240, 240), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
