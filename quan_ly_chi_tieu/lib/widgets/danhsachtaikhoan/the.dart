import 'package:flutter/material.dart';

class TheCard extends StatefulWidget {
  final String tenthe;
  TheCard(this.tenthe);

  @override
  _TheCardState createState() => _TheCardState(tenthe);
}

class _TheCardState extends State<TheCard> {
  final String tenthe;
  _TheCardState(this.tenthe);
  @override
  _moreOption(int option) {
    if (option == 0) {
      print('Sửa thành công');
    } else if (option == 1) {
      print('Xóa thành công');
    }
  }
  Widget _simplePopup() => PopupMenuButton<int>(
    onSelected: _moreOption,
    itemBuilder: (context) => [
      const PopupMenuItem(
        value: 0,
        child: Center(
          child: Text("Sửa"),
        ),
      ),
      const PopupMenuItem(
        value: 1,
        child: Center(
          child: Text("Xóa"),
        ),
      ),
    ],
  );
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(5),
        child: IconButton(
            onPressed: (){},
            icon: Icon(Icons.account_balance)
        ),
      ),
      title: Text(tenthe),
      subtitle: Text('1234123'),
      trailing: IconButton(
          onPressed: (){
            _simplePopup();
          },
          icon: const Icon(Icons.workspaces_filled)
      ),
    );
  }
}

