import 'package:flutter/cupertino.dart';

class ServicesPage extends StatelessWidget {
  const ServicesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            'service 1',
            style: style,
          ),
          Text(
            'service 2',
            style: style,
          )
        ],
      ),
    );
  }
}
