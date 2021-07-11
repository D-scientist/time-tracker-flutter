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
            height: 8.0,
          ),
          ElevatedButton(
            onPressed: _signInWithGoogle,
            child: Text(
              'Sign in with Google',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 15.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 10,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          CustomElevatedButton(
            child: Text(
              "Sign in with Facebook",
              style: TextStyle(color: Colors.black87, fontSize: 15.0),
            ),
            color: Colors.blue,
            borderRadius: 30,
            onPressed: _signInWithGoogle,
            height: 35,
          ),
          SizedBox(
            height: 8.0,
          ),
          SignInButton(
            text: "Sign In with Email",
            onPressed: _signInWithGoogle,
            buttonRadius: 30,
            color: Colors.pink[200],
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
