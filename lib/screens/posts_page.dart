import 'package:flutter/material.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.w400,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        actions: const [
          Icon(Icons.share),
          Padding(padding: EdgeInsets.only(left: 15)),
          Icon(Icons.mail_outline),
          Padding(padding: EdgeInsets.only(left: 15))
        ],
      ),
      body: const Center(
        child: Text(
          'posts',
          style: style,
        ),
      ),
    );
  }
}
