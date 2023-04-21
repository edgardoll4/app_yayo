import 'package:app_yayo/widgets/custom_botton_navigation.dart';
import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 123, 241, 211),
            Color.fromRGBO(61, 198, 244, 1),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.5, 0.5]));
  ScrollScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            PagePrimary(),
            PageSecundary(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class PagePrimary extends StatelessWidget {
  const PagePrimary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background
        Background(),
        MainContent(),
      ],
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity, // tome todo el heght posible
      color: Color.fromRGBO(61, 198, 244, 1),
      alignment: Alignment.topCenter,

      child: Image(image: AssetImage('assets/images/scroll-1.png')),
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
        fontSize: 50, color: Colors.white, fontWeight: FontWeight.bold);
    return SafeArea(
      left: true, // defaul true
      right: true, // defaul true
      top: true, // defaul true
      bottom: false, // defaul true
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            '11º',
            style: textStyle,
          ),
          Text(
            'Punto Fijo',
            style: textStyle,
          ),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            color: Colors.white,
            size: 80,
          ),
        ],
      ),
    );
  }
}

class PageSecundary extends StatelessWidget {
  const PageSecundary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(61, 198, 244, 1),
      child: Center(
        child: TextButton(
          onPressed: null, // () {},
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: Text('Bienvenido',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30)),
          ),
          style: TextButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: StadiumBorder(),
              shadowColor: Color.fromARGB(255, 0, 24, 62),
              elevation: 10),
        ),
      ),
    );
  }
}
