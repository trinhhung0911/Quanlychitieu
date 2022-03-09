import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/Screen/register_page.dart';
import 'home_page.dart';
class LoginPage extends StatelessWidget{
  TextEditingController _emailController= new TextEditingController();
  TextEditingController _passController= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30,0),
        constraints: BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Image.asset('image2.png'),
              const Padding(
                padding: EdgeInsets.fromLTRB(0,10,0,6),
                child: Text("Welecome back!",
                  style: TextStyle(fontSize: 22,color: Color(0xff333333)),
                ),
              ),
              const Text("Login to continue using Quản Lý Chi Tiêu",
                style: TextStyle(fontSize: 16,color: Color(0xff606470)),),
              const SizedBox(
                height: 80,
              ),
              TextField(
                controller: _emailController,
                style: TextStyle(fontSize: 18,color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Container(
                      width: 5,child: Image.asset('ic_mail.png'),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffCED0D2),width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: _passController,
                style: TextStyle(fontSize: 18,color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Container(
                      width: 5,child: Image.asset('ic_lock.png'),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffced0d2),width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6))
                    )
                ),
              ),
              Container(
                constraints: BoxConstraints.loose(Size(double.infinity,40)),
                alignment: AlignmentDirectional.centerEnd,
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(0,20,0,0),
                  child: Text("Forgot password ?",style: TextStyle(fontSize: 16,color: Color(0xff606470)),),
                ),

              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,30,0,40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: RaisedButton(
                      child: const Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),),
                      color: const Color(0xff234c9e),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      onPressed: (){
                        if(_emailController.text=='hung09112000@gmail.com'&&_passController.text=='123123')
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                        }
                        else
                        {
                          showAlertDialog(context);
                        }
                      },
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,40),
                child: RichText(
                  text: TextSpan(
                      text: "New user ?",
                      style: TextStyle(color: Color(0xff606470),fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
                            },
                            text: "Sign up for a new account",
                            style: TextStyle(color: Color(0xff327708),fontSize: 16)
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Simple Alert"),
    content: Text("Check the information again"),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}