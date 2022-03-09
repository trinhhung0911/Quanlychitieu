import 'dart:async';
class AuthBloc {
  StreamController _nameController = new StreamController();
  StreamController _emailController = new StreamController();
  StreamController _passController = new StreamController();
  StreamController _phoneController = new StreamController();

  Stream get nameStream => _nameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  Stream get phoneStream => _phoneController.stream;

  // kiểm tra tính hợp lệ
  bool isValid(String name, String email, String pass, String phone) {
    if (name == null || name.length == 0) {
      _nameController.sink.addError("Nhập tên !");
      return false;
    }
    _nameController.sink.add("");
    if (phone == null || phone.length == 0) {
      _phoneController.sink.addError("Nhập số điện thoại");
      return false;
    }
    _phoneController.sink.add("");

    if (email == null || email.length == 0 || !email.contains("@")) {
      _emailController.sink.addError("Nhập email đúng định dạng");
      return false;
    }
    _emailController.sink.add("");
    if (pass == null || pass.length < 6) {
      _passController.sink.addError("Nhập pass đúng định dạng");
      return false;
    }
    _passController.add("");

    return true;
  }
  //kiểm tra
 /* void SignUp(String email, String pass,String phone, String name,Function onSuccess){
    _firAuth.SignUp(email, pass, name, phone, onSuccess);

  }*/
  void dispose() {
    _nameController.close();
    _passController.close();
    _emailController.close();
    _phoneController.close();
  }
}
