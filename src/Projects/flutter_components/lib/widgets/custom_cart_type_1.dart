import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Soy un titulo'),
            subtitle: Text(
                'Ut consequat consequat magna ipsum duis sit nostrud esse occaecat culpa dolor id aute. Mollit magna irure nisi voluptate aliqua. Do enim ad velit voluptate dolor consectetur magna ad aliqua et ad proident aliqua minim. Tempor veniam adipisicing pariatur dolore pariatur deserunt ipsum ad ullamco. Esse id sit irure cupidatat eu Lorem aliquip proident elit veniam cupidatat pariatur irure ipsum. Reprehenderit qui eu veniam laborum aliquip id officia. Mollit velit minim eiusmod dolore incididunt est.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
