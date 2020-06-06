import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String _namevar = "";
  String _passwordvar = "";

  //GlobalKey<FormState> _formLoginkey = GlobalKey<FormState>();

  void _loginAcess() {
    setState(() {
      _namevar = emailController.text;
      _passwordvar = passwordController.text;
      //emailController.clear();
      //passwordController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login 2',
          style:
              TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
         padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Divider(color: Colors.white,),
                Text(
                  'DÉBITO FACIL',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Icon(
                  Icons.monetization_on,
                  size: 80,
                  color: Colors.lightGreen,
                ),
                Divider(color: Colors.white,),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
                Divider(color: Colors.white,),
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                  obscureText: true,
                ),
                FlatButton(
                    onPressed: () {
                      //Rota para recuperar senha
                    },
                    textColor: Colors.teal,
                    child: Text('Esqueci a Senha',
                        style: TextStyle(color: Colors.blue))),
                RaisedButton(
                  onPressed: () {

                      _loginAcess();

                    emailController.clear();
                    passwordController.clear();
                  },
                  textColor: Colors.white,
                  color: Colors.deepPurple,
                  child: Text(
                    "Login",
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Você não possui conta?",
                        style: TextStyle(color: Colors.blue),
                      ),
                      Divider(),
                      FlatButton(
                        textColor: Colors.blue,
                        child: Text(
                          "Cadastrar",
                          style: TextStyle(fontSize: 18, color: Colors.green),
                        ),
                        onPressed: () {
                          //Cadastrar Conta de e-mail
                        },
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            _namevar,
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          )
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            _passwordvar,
                            style: TextStyle(color: Colors.blue, fontSize: 22),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ),
    );
  }
}
