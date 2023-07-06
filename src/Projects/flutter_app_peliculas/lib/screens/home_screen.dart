import 'package:flutter/material.dart';
import 'package:flutter_app_peliculas/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Peliculas en cines'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_outlined),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CardSwiper(),
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),
            MovieSlider(),
          ],
        ),
      ),
    );
  }
}
