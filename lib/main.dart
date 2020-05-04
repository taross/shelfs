import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:shelfs/api/api.dart';
import 'package:shelfs/models/models.dart';
import 'package:shelfs/ui/signin_page.dart';

import 'models/controllers/controllers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<API>(create: (context) => APIClient()),
        StateNotifierProvider<ShelfController, ShelfState>(
          create: (context) => ShelfController(
            ShelfState(
              shelf: Shelf(
                name: 'モックの書庫',
                description: 'もっくです',
                books: [],
              ),
              searchedBooks: [],
            ),
          ),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: SigninPage(),
      ),
    );
  }
}
