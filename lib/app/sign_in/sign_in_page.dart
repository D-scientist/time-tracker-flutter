import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_app/common_widgets/custom_elevated_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2.0,
        title: Text('Time Tracker'),
      ),
      body: _buildContent(),
      backgroundColor: Colors.grey[200],
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 48.0,
          ),
          SignInButton(
            text: "Sign In with Google",
            onPressed: _signInWithGoogle,
            color: Colors.white,
            textColor: Colors.black87,
            buttonRadius: 30,
            height: 50,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: "Sign In with Facebook",
            onPressed: _signInWithGoogle,
            color: Color(0xFF334D92),
            textColor: Colors.white,
            buttonRadius: 30,
            height: 50,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: "Sign In with Email",
            onPressed: _signInWithGoogle,
            buttonRadius: 30,
            color: Colors.teal[700],
            textColor: Colors.white,
            height: 50,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Or',
            style: TextStyle(fontSize: 14.0, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: "Sign In with Email",
            onPressed: _signInWithGoogle,
            buttonRadius: 30,
            color: Colors.lime[300],
            textColor: Colors.black87,
            height: 50,
          )
          //   Text('Sign In'),
          //   ElevatedButton(onPressed: null, child: Text('data')),
          //   ElevatedButton(onPressed: null, child: Text('data')),
          //   ElevatedButton(onPressed: null, child: Text('data')),
        ],
      ),
    );
  }

  Void _signInWithGoogle() {}
}
