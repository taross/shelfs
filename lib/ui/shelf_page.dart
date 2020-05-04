import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shelfs/models/controllers/controllers.dart';

import 'package:shelfs/models/models.dart';
import 'package:shelfs/ui/search_dialog.dart';

class ShelfPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShelfPageState();
}

class ShelfPageState extends State<ShelfPage> {
  ShelfState state;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    state = Provider.of<ShelfState>(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 80,
          vertical: 20,
        ),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  state.shelf.name,
                  style: GoogleFonts.mPlus1p(
                    fontSize: 28,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  state.shelf.description,
                  style: GoogleFonts.mPlus1p(
                    fontSize: 14,
                    color: Colors.black54,
                  ),
                ),
                Expanded(
                  child: state.shelf.books.length == 0
                      ? Center(
                          child: Text('空だよ〜'),
                        )
                      : GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: countInGridRow,
                          ),
                          itemCount: state.shelf.books.length,
                          itemBuilder: (BuildContext context, int index) {
                            return buildBookView(state.shelf.books[index]);
                          },
                        ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => SearchDialog(),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }

  int get countInGridRow => (MediaQuery.of(context).size.width ~/ 250);

  Widget buildBookView(Book book) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  color: Colors.grey[400],
                ),
              ],
            ),
            child: Image.network(book.thumnailUrl),
          ),
        ],
      ),
    );
  }
}
