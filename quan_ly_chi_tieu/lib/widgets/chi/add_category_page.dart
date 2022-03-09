import 'package:flutter/material.dart';
class AddCategoryPage extends StatefulWidget {
  const AddCategoryPage({Key? key}) : super(key: key);

  @override
  _AddCategoryPageState createState() => _AddCategoryPageState();
}

class _AddCategoryPageState extends State<AddCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text('Tạo hạng mục mới'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.check),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                Container(
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    width: double.infinity,
                    child: Form(
                      child: TextFormField(
                        autofocus: true,
                        style: const TextStyle(fontSize: 20),
                        decoration: InputDecoration(
                            hintText: 'Tên hạng mục',
                            hintStyle: const TextStyle(fontSize: 20),
                            icon: Icon(
                              Icons.category,
                              size: 30,
                              color: Theme.of(context).primaryColor,
                            )),
                      ),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  width: double.infinity,
                  child: TextFormField(
                    autofocus: true,
                    style: const TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        hintText: 'Chú thích',
                        hintStyle: const TextStyle(fontSize: 20),
                        icon: Icon(
                          Icons.subject,
                          size: 30,
                          color: Theme.of(context).primaryColor,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: RaisedButton(
                    color: Theme.of(context).primaryColor,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const <Widget>[
                          Icon(
                            Icons.save_alt,
                            size: 28,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Tạo',
                          ),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
