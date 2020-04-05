import 'package:flutter/material.dart';

class HeaderSearchScreen extends StatefulWidget with PreferredSizeWidget {
  HeaderSearchScreen({Key key}) : super(key: key);

  @override
  _HeaderSearchScreenState createState() => _HeaderSearchScreenState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _HeaderSearchScreenState extends State<HeaderSearchScreen> {
  final TextEditingController _controller = TextEditingController();
  bool _isSearching;
  String _searchText = "";

  Widget appBarTitle = Text(
    "Busca una pelicula",
    style: TextStyle(color: Colors.black),
  );
  Icon icon = Icon(
    Icons.search,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return buildAppBar(context);
  }

  @override
  void initState() {
    super.initState();
    _isSearching = true;
  }

  Widget buildAppBar(BuildContext context) {
    return AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: this.appBarTitle = TextField(
          controller: _controller,
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
              suffix: IconButton(
                icon: Icon(Icons.cancel),
                onPressed: () {
                  Future.delayed(Duration(milliseconds: 50)).then((_) {
                    _controller.clear();
                    FocusScope.of(context).unfocus();
                  });
                },
              ),
              hintText: "Buscar",
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.5))),
          onChanged: searchOperation,
        ));
  }

  void searchOperation(String searchText) {
    print(searchText);
  }
}
