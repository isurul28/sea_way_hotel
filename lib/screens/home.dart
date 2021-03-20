import 'package:flutter/material.dart';
import 'package:seaway/router.dart';
import 'package:seaway/widgets/app_drawer.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      drawer: AppDrawer(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    icon: Icon(
                      Icons.menu,
                      size: 35.0,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              _loginForm(context),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginForm(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 30.0,
        ),
        Container(
          alignment: Alignment.center,
          height: 320.441,
          child: Image.asset("assets/images/walkthrough1.png"),
          decoration: BoxDecoration(),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 45.0,
          child: FlatButton(
            color: _theme.primaryColor,
            onPressed: () {
              Navigator.of(context).pushReplacementNamed(ConfirmOrderRoute);
            },
            child: Text(
              "SCAN ME",
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ),
        )
      ],
    );
  }
}
