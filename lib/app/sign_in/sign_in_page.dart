import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_app/app/sign_in/sign_in_button.dart';
import 'package:time_tracker_app/app/sign_in/social_sign_in_button.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key, @required this.onSignIn}) : super(key: key);

  final void Function(User) onSignIn;

  //Sign In anonymously
  Future<void> _signInAnonymously() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      onSignIn(userCredential.user);
    } catch (e) {
      print(e.toString());
    }
  }

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
          SocialSignInButton(
            assetName: 'images/images/google-logo.png',
            text: 'Sign In with Google',
            buttonRadius: 30,
            color: Colors.white,
            height: 50,
            textColor: Colors.black87,
            onPressed: () {},
          ),
          SizedBox(
            height: 8.0,
          ),
          SocialSignInButton(
            assetName: 'images/images/facebook-logo.png',
            text: 'Sign In with Facebook',
            buttonRadius: 30,
            color: Color(0xFF334D92),
            height: 50,
            textColor: Colors.white,
            onPressed: () {},
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
            text: "Sign In Anonymously",
            onPressed: _signInAnonymously,
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

  void _signInWithGoogle() {}
}
