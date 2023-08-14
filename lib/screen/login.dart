import 'package:flutter/material.dart';
import 'package:flutter_application_1/home.dart';

class ScreenLogin extends StatefulWidget {
  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'it was error';
                  }
                },
                controller: _usernameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
              ),
              const SizedBox(height: 20),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'it was error';
                  }
                },
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton.icon(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    checkLogin(context);
                  }
                },
                icon: const Icon(Icons.check),
                label: const Text("Login"),
              ),
              Stack(children: [Positioned(child: Container())],)
            ],
          ),
        ),
      )),
    );
  }

  void checkLogin(BuildContext ctx) async {
    final _username = _usernameController.text;
    final _password = _passwordController.text;
    if (_username == _password) {
//goto home
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => homescreen(),
          ));
    } else {
//snackbar

      ScaffoldMessenger.of(ctx).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          margin: EdgeInsets.all(10),
          content: Text("incorrect username or password"),
          duration: Duration(seconds: 4),
        ),
      );
    }
  }
}
