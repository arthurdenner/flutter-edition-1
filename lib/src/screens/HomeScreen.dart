import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text('STARBUCKS',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold)),
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.only(bottom: 150),
                  child: Image.asset(
                    'images/header.png',
                    // height: 200,
                    // width: width,
                  ),
                ),
                Positioned(
                    top: 170,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        height: 175,
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border:
                                Border.all(width: 1, color: Color(0xFFF0C08F))),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Card Balance',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('\$'),
                                    Text(
                                      '194.20',
                                      style: TextStyle(fontSize: 20),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                CardBalanceAction(
                                    image: 'images/wallet.png', text: 'Top Up'),
                                CardBalanceAction(
                                    image: 'images/hand.png', text: 'Rewards'),
                                CardBalanceAction(
                                    image: 'images/mobile.png', text: 'Pay'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            )
          ],
        ));
  }
}

class CardBalanceAction extends StatelessWidget {
  final String image;
  final String text;

  const CardBalanceAction({
    Key key,
    @required this.image,
    @required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(this.image, height: 60, width: 60),
        Text(this.text)
      ],
    );
  }
}