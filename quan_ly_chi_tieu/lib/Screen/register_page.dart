import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quan_ly_chi_tieu/Bloc/register_bloc.dart';
import 'home_page.dart';
class RegisterPage extends StatefulWidget{
  const RegisterPage({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}
class _RegisterPageState extends State<RegisterPage>{
  AuthBloc authBloc = AuthBloc();
  TextEditingController _nameController= TextEditingController();
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passController= TextEditingController();
  TextEditingController _phoneController=  TextEditingController();
  @override
  Widget build(BuildContext context) {
    void dispose(){
      super.dispose();
    //  authBloc.dispose();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Color(0xff3277D8)),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(30,0,30,0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children:<Widget>[
              Image.asset('image2.png'),
              const Padding(
                padding: EdgeInsets.fromLTRB(0,10,0,6),
                child: Text("Welcome Adoard !!",
                  style: TextStyle(fontSize: 22,color: Color(0xff333333)),
                ),),
              const Text("Signup with iCab simple steps",
                style: TextStyle(fontSize: 16,color: Color(0xff606470)),),
              const SizedBox(
                height: 50,
              ),
              StreamBuilder(
                stream: authBloc.nameStream,
                builder: (context,snapshot)=> TextField(
                  controller: _nameController,
                  style: TextStyle(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                      errorText: snapshot.hasError?snapshot.error.toString():null,
                      labelText: "Name",
                      prefixIcon: Container(
                        width: 5,child: Image.asset('ic_user.png'),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCED0D2),width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              StreamBuilder(
                stream: authBloc.phoneStream,
                builder: (context,snapshot)=> TextField(
                  controller: _phoneController,
                  style: TextStyle(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                      errorText: snapshot.hasError?snapshot.error.toString():null,
                      labelText: "Phone Number",
                      prefixIcon: Container(
                        width: 5,child: Image.asset('ic_phone.jpg'),
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffCED0D2),width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6))
                      )
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              StreamBuilder(
                stream: authBloc.emailStream,
                builder: (context,snapshot)=> TextField(
                  controller: _emailController,
                  style: TextStyle(fontSize: 18,color: Colors.black),
                  decoration: InputDecoration(
                      errorText: snapshot.hasError?snapshot.error.toString():null,
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
              ),
              const SizedBox(
                height: 10,
              ),
              StreamBuilder(
                stream: authBloc.passStream,
                builder: (context,snapshot)=> TextField(
                  controller: _passController,
                  style: TextStyle(fontSize: 18,color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      errorText: snapshot.hasError?snapshot.error.toString():null,
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
              ),
              Padding(padding: const EdgeInsets.fromLTRB(0,30,0,40),
                  child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: RaisedButton(
                      child: Text("Signup",style: TextStyle(color: Colors.white,fontSize: 18),),
                      color: Color(0xff234c9e),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      onPressed: (){
                        _onSignUpClicked();
                      },
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0,0,0,40),
                child: RichText(
                  text: TextSpan(
                      text: "Already a User ?",
                      style: TextStyle(color: Color(0xff606470),fontSize: 16),
                      children: <TextSpan>[
                        TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                            },
                            text: "Login now",
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
  _onSignUpClicked() {
     var isValid=authBloc.isValid(_nameController.text, _emailController.text, _passController.text, _phoneController.text);
     if(isValid==true){
       Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
     }
  }


}