import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                name: 'Un Paisaje Precioso',
                imageUrl:
                    'https://images.pexels.com/photos/2662116/pexels-photo-2662116.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                name: 'Un Paisaje generado por IA',
                imageUrl:
                    'https://img.freepik.com/free-vector/colorful-mountains-landscape-background_52683-24001.jpg?w=1380&t=st=1688353252~exp=1688353852~hmac=e5017bb7385f70e222eb6bc5062e20aab6d01b8c027e39ed447bbfa6bdba4128'),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
                imageUrl:
                    'https://images.pexels.com/photos/2325446/pexels-photo-2325446.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
