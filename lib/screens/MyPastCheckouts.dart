import 'package:flutter/material.dart';
import 'package:seaway/router.dart';
import 'package:seaway/widgets/ride_card.dart';
import 'package:seaway/widgets/ride_cards.dart';

class MyPastCheckouts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData _theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _theme.scaffoldBackgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            }
          },
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "My Past Checkouts",
              style: _theme.textTheme.title,
            ),
            SizedBox(
              height: 15.0,
            ),
            Expanded(
              child: DefaultTabController(
                length: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    TabBar(
                      unselectedLabelColor: Colors.grey,
                      labelColor: _theme.primaryColor,
                      labelStyle: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      indicatorColor: _theme.primaryColor,
                      tabs: <Widget>[
                        Tab(
                          text: "My Past Checkouts",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          SingleChildScrollView(
                            child: RideCards(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
