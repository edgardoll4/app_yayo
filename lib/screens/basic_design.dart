import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        left: true, // defaul true
        right: true, // defaul true
        top: true, // defaul true
        bottom: false,
        child: Column(
          children: [
            // Imagen
            Image(
              image: AssetImage('assets/images/132132.jpg'),
            ),
            // Title
            Title(),
            // Buttons Section
            ButtonSection(),
            // Description
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Text(
                  'Ipsum2312312 fugiat officia fugiat laboris amet enim dolore et nisi officia amet. Laborum aliqua do eiusmod duis laboris. Duis Lorem est eiusmod laborum est excepteur velit non eiusmod ut ut.'),
            )
          ],
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.5, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Lorenm Title',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.5),
              ),
              const Text(
                'Lorenm no se que subtitle',
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconParametro(
            tipoIcon: Icons.call,
            colorIcon: Colors.purpleAccent,
            textIcon: 'Call',
          ),
          IconParametro(
            tipoIcon: Icons.near_me,
            colorIcon: Colors.redAccent,
            textIcon: 'Route',
          ),
          IconParametro(
            tipoIcon: Icons.share,
            colorIcon: Colors.blueAccent,
            textIcon: 'Share',
          ),
        ],
      ),
    );
  }
}

class IconParametro extends StatelessWidget {
  final IconData tipoIcon;
  final Color colorIcon;
  final String textIcon;
  final double sizeIcon;
  const IconParametro(
      {super.key,
      required this.tipoIcon,
      this.colorIcon = Colors.blue,
      this.textIcon = 'Texto',
      this.sizeIcon = 24});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          tipoIcon,
          color: colorIcon,
          size: sizeIcon,
        ),
        Text(
          '${textIcon}',
          style: TextStyle(color: colorIcon),
        )
      ],
    );
  }
}
