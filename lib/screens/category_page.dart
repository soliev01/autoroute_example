import 'package:flutter/cupertino.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
    );
    return const Center(
      child: Text(
        'List of Categories',
        style: style,
      ),
    );
  }
}
