import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Forget_p extends StatefulWidget {
  @override
  State<Forget_p> createState() => _Forget_pState();
}

class _Forget_pState extends State<Forget_p> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();

  Future<void> _sendResetPasswordEmail(String email) async {
    // Call API endpoint to send reset password email
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/HomePage');
            },
            icon: Icon(Icons.home),
          )
        ],
        title: Text('Forget Password ', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromARGB(255, 75, 6, 1),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email Address'),
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Please enter your email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    _sendResetPasswordEmail(_emailController.text);
                    // Show success message to user
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
