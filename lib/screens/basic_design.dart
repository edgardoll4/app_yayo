import 'package:app_yayo/widgets/custom_botton_navigation.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Imagen
              const Image(
                image: AssetImage('assets/images/132132.jpg'),
              ),
              // Title
              const Title(),
              // Buttons Section
              const ButtonSection(),
              // Description
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: const Text(
                    'Ipsum2312312 fugiat officia fugiat laboris amet enim dolore et nisi officia amet. Laborum aliqua do eiusmod duis laboris. Duis Lorem est eiusmod laborum est excepteur velit non eiusmod ut ut.'),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
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
      margin: const EdgeInsets.symmetric(horizontal: 24.5, vertical: 10),
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
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41')
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
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const IconParametro(
            tipoIcon: Icons.call,
            colorIcon: Colors.purpleAccent,
            textIcon: 'Call',
          ),
          const IconParametro(
            tipoIcon: Icons.near_me,
            colorIcon: Colors.redAccent,
            textIcon: 'Route',
          ),
          const IconParametro(
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
