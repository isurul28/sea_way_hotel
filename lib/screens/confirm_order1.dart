import 'package:flutter/material.dart';
import 'package:seaway/router.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ConfirmOrderPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/confirm_order1.dart";
  final String phone = "9418522122";
  final double total = 500;
  final double tax = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Confirm Check Out"),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      padding:
          EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Subtotal"),
              Text("Rs. $total"),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Tax"),
              Text("Rs. $tax"),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Total",
                style: Theme.of(context).textTheme.title,
              ),
              Text("Rs. ${total + tax}",
                  style: Theme.of(context).textTheme.title),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Rate Us".toUpperCase())),
          Column(
            children: <Widget>[
              RatingBar.builder(
                initialRating: 3,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              color: Colors.grey.shade200,
              padding: EdgeInsets.all(8.0),
              width: double.infinity,
              child: Text("Payment Option".toUpperCase())),
          RadioListTile(
            groupValue: true,
            value: true,
            title: Text("Visa"),
            onChanged: (value) {},
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.amber,
              onPressed: () =>
                  {Navigator.of(context).pushReplacementNamed(PaymentRoute)},
              child: Text(
                "Select Payment",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              color: Colors.green,
              onPressed: () => {},
              child: Text(
                "Confirm Payment",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
