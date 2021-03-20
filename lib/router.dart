import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seaway/screens/add_card.dart';
import 'package:seaway/screens/home.dart';
import 'package:seaway/screens/login.dart';
import 'package:seaway/screens/MyPastCheckouts.dart';
import 'package:seaway/screens/payment.dart';
import 'package:seaway/screens/profile.dart';
import 'package:seaway/screens/register.dart';
import 'package:seaway/screens/update_information.dart';
import 'package:seaway/screens/unauth.dart';
import 'package:seaway/screens/confirm_order1.dart';

import 'screens/walkthrough.dart';

// Routes
// const String HomePageRoute = "/";
const String WalkthroughRoute = "/";
const String RegisterRoute = "register";
const String LoginRoute = "login";
const String PhoneRegisterRoute = "phone-register";
const String OtpVerificationRoute = "otp-verification";
const String UpdateInformationRoute = "update-information";
const String SelectCountryRoute = "country-select";
const String HomepageRoute = "homepage";
const String DestinationRoute = "destination";
const String UnAuthenticatedPageRoute = "unauth";
const String ProfileRoute = "profile";
const String PaymentRoute = "payment";
const String AddCardRoute = "addCard";
const String ChatRiderRoute = "chatRider";
const String FavoritesRoute = "favorite";
const String UpdateFavoritesRoute = "update-favorite";
const String PromotionRoute = "promotion";
const String SuggestedRidesRoute = "suggested-route";
const String MyPastCheckoutsRoute = "mycheckouts";
const String MyBillsRoute = "MyBills";
const String ConfirmOrderRoute = "ConfirmOrderPage";

// Router
Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case ConfirmOrderRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => ConfirmOrderPage());
    case RegisterRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Register());
    case LoginRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Login());
    case OtpVerificationRoute:
    case UpdateInformationRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => UpdateInformation());
    case HomepageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Homepage());
    case UnAuthenticatedPageRoute:
      return MaterialPageRoute(builder: (BuildContext context) => UnAuth());
    case ProfileRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Profile());
    case PaymentRoute:
      return MaterialPageRoute(builder: (BuildContext context) => Payment());
    case AddCardRoute:
      return MaterialPageRoute(builder: (BuildContext context) => AddCard());
    case MyPastCheckoutsRoute:
      return MaterialPageRoute(
          builder: (BuildContext context) => MyPastCheckouts());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => WalkThrough());
  }
}
