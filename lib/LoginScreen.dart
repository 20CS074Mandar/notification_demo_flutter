import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  FirebaseAuth _auth=FirebaseAuth.instance;
  @override
  void initState() {
    // TODO: implement initState
    checkUserSignedIn();
    super.initState();
  }
  checkUserSignedIn() async{
    try{
      final User user = await _auth.currentUser!;
    }
    catch(e){
      print(e);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
