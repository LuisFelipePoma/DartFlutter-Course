import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [Color(0xff6be9c4), Color(0xff46B9D5)],
        stops: [0.5, 0.5],
        end: Alignment.bottomCenter),
  );

  const ScrollDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff46B9D5),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            Page2(),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff46B9D5),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: const Color(0xff2C8DF2),
            shape: const StadiumBorder(),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              'Bienvenido',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        // _Background Image
        _Background(),
        //
        MainContent(),
      ],
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
        fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 60),
          Text('11°', style: textStyle),
          Text('Miercoles', style: textStyle),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff46b9d5),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}
