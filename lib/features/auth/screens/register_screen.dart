import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constants/constants.dart';
import '../../home/screens/home_screen.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

final storage = new FlutterSecureStorage();



class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _formKey = GlobalKey<FormState>();
  var isLoading = false;
  String? name;
  String? email;
  String? password;
  //  void _submit() {
  //   final isValid = _formKey.currentState.validate();
  //   if (!isValid) {
  //     return;
  //   }
  //   _formKey.currentState.save();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true, // centers the logo
          title: Image.asset(
            Constants.logoPath,
            height: 40,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('skip'))
          ]),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Text(
                  "Register for Reddit ",
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Name'),
                  keyboardType: TextInputType.name,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'E-Mail'),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (value) {
                    //Validator
                  },
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                      return 'Enter a valid email!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                //text input
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (value) {},
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter a valid password!';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                          
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Registered Successfully!!')),
                        );
                      }
                    },
                    child: Text("Submit"))
                // RaisedButton(
                //   padding: EdgeInsets.symmetric(
                //     vertical: 10.0,
                //     horizontal: 15.0,
                //   ),
                //   child: Text(
                //     "Submit",
                //     style: TextStyle(
                //       fontSize: 24.0,
                //     ),
                //   ),
                //   onPressed: () => _submit(),
                // )
              ],
            )),
      ),
    );
  }
}
