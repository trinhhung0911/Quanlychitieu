import 'package:flutter/material.dart';

import 'add_category_page.dart';
class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  void _submit() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddCategoryPage()),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text('Chọn hạng mục'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: _submit,
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
                padding: const EdgeInsets.symmetric(
                    vertical: 10, horizontal: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Theme.of(context).brightness == Brightness.dark? Colors.black45: Colors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0.0, 15.0),
                      blurRadius: 15.0,
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (text) {},
                  decoration: InputDecoration(
                      hintText: 'Tìm tên hạng mục',
                      border: InputBorder.none,
                      icon: Icon(
                        Icons.search,
                        color: Colors.black.withOpacity(0.5),
                      )),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
               Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color:  Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 15.0),
                    blurRadius: 15.0,
                  ),
                ],
              ),
              child: const ExpansionTile(
                title: Text('Con Cái' ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.grey)),
                initiallyExpanded: false,
              )
          ),
               Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:  Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(0.0, 15.0),
                        blurRadius: 15.0,
                      ),
                    ],
                  ),
                  child: const ExpansionTile(
                    title: Text('Điện nước' ,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500, color: Colors.grey)),
                    initiallyExpanded: false,
                  )
              )
            ],
          ),
        ),
      ),

    );
  }
}
