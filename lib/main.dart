import 'package:flutter/material.dart';

import 'model/movies/list/view/movie_list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFF141414),
        ),
        home: MovieList(title: 'Movies')
    );
  }
}
