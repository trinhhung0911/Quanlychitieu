import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/Screen/home_page.dart';
import 'package:quan_ly_chi_tieu/Screen/login_page.dart';
import 'package:quan_ly_chi_tieu/page/list_account.dart';
import 'package:quan_ly_chi_tieu/page/management_collect.dart';
import 'package:quan_ly_chi_tieu/page/management_spend.dart';
class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text("Quản Lý Chi Tiêu"),
            accountEmail: Text('hung09112000@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text(
                "H",
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home), title: const Text("Trang Chủ"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_balance_wallet_sharp),
            title: const Text("Quản Lý Thu"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ManagementCollect()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_photo_alternate_outlined),
            title: const Text("Quản Lý Chi"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ManagementSpend()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.contacts),
            title: const Text("Thống Kê"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.view_list),
            title: const Text("Danh sách tài khoản"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ListAccount()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_filled),
            title: const Text("Đổi Mật Khẩu"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.arrow_back),
            title: const Text("Thoát"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            },
          ),
        ],
      ),
    );
  }
}
