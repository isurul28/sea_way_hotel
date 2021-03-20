import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seaway/providers/walkthrough_provider.dart';
import 'package:seaway/router.dart';
import 'package:seaway/widgets/walkthrough_stepper.dart';
import 'package:seaway/widgets/walkthrough_template.dart';

class WalkThrough extends StatelessWidget {
  final PageController _pageViewController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    final WalkthroughProvider _walkthroughProvider =
        Provider.of<WalkthroughProvider>(context, listen: false);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                child: PageView(
                  controller: _pageViewController,
                  onPageChanged: (int index) {
                    _walkthroughProvider.onPageChange(index);
                  },
                  children: <Widget>[
                    WalkThroughTemplate(
                      title: "Scan Qr Code",
                      subtitle: "",
                      image: Image.asset("assets/images/walkthrough1.png"),
                    ),
                    WalkThroughTemplate(
                      title: "Check Your Bills",
                      subtitle: "",
                      image: Image.asset("assets/images/walkthrough2.png"),
                    ),
                    WalkThroughTemplate(
                      title: "View Your Past Checkout History.",
                      subtitle: "",
                      image: Image.asset("assets/images/walkthrough3.png"),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(24.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child:
                          WalkthroughStepper(controller: _pageViewController),
                    ),
                    ClipOval(
                      child: Container(
                        color: Theme.of(context).primaryColor,
                        child: IconButton(
                          icon: Icon(
                            Icons.trending_flat,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            if (_pageViewController.page >= 2) {
                              Navigator.of(context).pushReplacementNamed(
                                  UnAuthenticatedPageRoute);
                              return;
                            }
                            _pageViewController.nextPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease);
                          },
                          padding: EdgeInsets.all(13.0),
                        ),
                      ),
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
