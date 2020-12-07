import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:culturally/main.dart';
import './loginPage.dart';
import './signUpPage.dart';
import './visaPayment.dart';

class mainPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.orange,
            elevation: 9.0,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Payment',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20.0,
                    color: Colors.white))),
        floatingActionButton: FloatingActionButton(onPressed: () {},
          backgroundColor: Colors.deepOrange,
          child: Image.asset('images/groups.png', height: 35, width: 35,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 6.0,
            color: Colors.transparent,
            elevation: 9.0,
            clipBehavior: Clip.antiAlias,
            child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.0),
                        topRight: Radius.circular(25.0)
                    ),
                    color: Colors.orange
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width /2 - 30.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.home, color: Colors.white),
                                  onPressed: null),
                              IconButton(
                                icon: Icon(Icons.favorite, color: Colors.white),
                                //onPressed: pushFavorites
                              ),
                            ],
                          )
                      ),
                      Container(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width /2 - 30.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(Icons.forum, color: Colors.white),
                                  onPressed: null),
                              IconButton(
                                  icon: Icon(Icons.account_box, color: Colors.white),
                                  onPressed: null),
                            ],
                          )
                      ),
                    ]
                )
            )),
        body: Stack(
            children: <Widget>[
              new Positioned.fill(
                  top: -500,
                  right: 260,
                    child: Container(
                      width: 250,
                      height:250,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/visa.png'), scale: 2)
                    )),
                  ),
              new Positioned.fill(
                  top: -500,
                  right: 90,
                  child: Container(
                    width: 250,
                    height:250,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/mbway.png'), scale: 2)
                    ),
                  )),
              new Positioned.fill(
                  top: -500,
                  right: -80,
                  child: Container(
                    width: 250,
                    height:250,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/paypal.png'), scale: 2)
                    ),
                  )),
              new Positioned.fill(
                  top: -500,
                  right: -250,
                  child: Container(
                    width: 250,
                    height:250,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('images/multibanco.png'), scale: 2)
                    ),
                  )),
              new Align(
                alignment: Alignment.center,
                  child:Container(
                    padding: EdgeInsets.only(bottom:380),
                    child: Text(
                    "Select a payment method above",
                    style: TextStyle(fontSize: 18.0),
                  ),
            ))]));
  }
}