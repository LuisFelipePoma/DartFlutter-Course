import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Imagen
          const Image(image: AssetImage('assets/landscape.jpg')),

          // Titulo
          const Title(),

          // Button Section
          const ButtonSections(),

          // Description Section
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Sunt adipisicing sint elit velit deserunt id magna anim. Est ut aliqua aliquip sunt eiusmod cupidatat magna ut labore et. Adipisicing excepteur incididunt ut proident commodo nisi mollit et esse officia. Nostrud proident eiusmod cillum cillum commodo minim eu excepteur occaecat laborum consectetur proident et.',
              textAlign: TextAlign.justify,
            ),
          )
        ],
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
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('kandersteg, Switzerland',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black45))
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star_outline, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}

class ButtonSections extends StatelessWidget {
  const ButtonSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.map_sharp, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.text,
  });

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(icon, color: Colors.blue),
        ),
        Text(text, style: const TextStyle(color: Colors.blue))
      ],
    );
  }
}
