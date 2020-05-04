import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shelfs/models/controllers/shelf/shelf_controller.dart';
import 'package:shelfs/models/controllers/shelf/shelf_state.dart';

class SearchDialog extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchDialogState();
}

class _SearchDialogState extends State<SearchDialog> {
  TextEditingController controller = TextEditingController();
  ShelfState state;

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    state = Provider.of<ShelfState>(context);
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text("書庫に追加"),
      children: <Widget>[
        Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                controller: controller,
                onEditingComplete: () async {
                  await Provider.of<ShelfController>(context, listen: false).search(title: controller.text);
                },
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        await Provider.of<ShelfController>(context, listen: false).addBook(state.searchedBooks[index]);
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
                        child: Image.network(state.searchedBooks[index].thumnailUrl),
                      ),
                    );
                  },
                  itemCount: state.searchedBooks.length,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
