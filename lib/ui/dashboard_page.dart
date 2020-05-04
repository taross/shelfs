import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shelfs/models/controllers/controllers.dart';
import 'package:shelfs/models/entities/entities.dart';
import 'package:shelfs/ui/shelf_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // SideBar
              width: 200,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    // Icon
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 30,
                        ),
                        SizedBox(
                          height: 14,
                        ),
                        Text(
                          'Mock User',
                          style: GoogleFonts.montserrat(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text('何？')
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          shelfCardBuilder(
                            Shelf(name: 'もっく1', description: 'もっくの書庫1です', books: []),
                          ),
                          shelfCardBuilder(
                            Shelf(name: 'もっく2', description: 'もっくの書庫2です', books: []),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget shelfCardBuilder(Shelf shelf) {
    return GestureDetector(
      onTap: () {
        Provider.of<ShelfController>(context, listen: false).changeShelf(shelf);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => ShelfPage(),
          ),
        );
      },
      child: Container(
        width: 250,
        height: 250,
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: Colors.grey[400],
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 32,
                  ),
                  SizedBox(height: 10),
                  Text(shelf.name),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: Center(
                child: Text('蔵書数: ${shelf.books.length}'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
