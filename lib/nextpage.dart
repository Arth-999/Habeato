import 'package:flutter/material.dart';
import 'constants.dart';

class SidesPage extends StatefulWidget {
  @override
  _SidesPageState createState() => _SidesPageState();
}

class _SidesPageState extends State<SidesPage> with TickerProviderStateMixin{
  bool value1 = false;
  bool value2 = false;
  bool selected1 = false;
  bool selected2 = false;

  double _post1 = 95;
  double _post11 = 25;
  double _post111 = 150;
  double _post2 = 95;
  double _post22 = 225;
  double _post222 = 150;

  void _movewidget1() {
    setState(() {
      value1=true;
      _post111 = 125;
      _post1 = 290;
      _post11 = -10;
    });
  }
  void _movebackwidget1(){
    setState(() {
      value1=false;
      _post111=150;
      _post1 = 95;
      _post11 = 22;
    });
  }
  void _movewidget2() {
    setState(() {
      value2=true;
      _post222 = 125;
      _post2 = 477;
      _post22 = 270;
    });
  }
  void _movebackwidget2(){
    setState(() {
      value2=false;
      _post222 = 150;
      _post2 = 95;
      _post22 = 225;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCD2AD),
      body: SafeArea(
        child: Stack(children: <Widget>[
          Container(
            height: 175,
            color: Color(0xFFFCD2AD),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
              child: Text(
                'Select the side(s) you prefer with Dinner',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Hero(
              tag: "tag$num",
              child: Container(
                height: 600,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(1),
                      spreadRadius: -30,
                      blurRadius: 50,
                      offset: Offset(0, 7),
                    )
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        height: 300,
                        child: Image.asset('images/image$number.png')),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 2.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Text(
                      'Sides',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          child: Container(
                            width: 125,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/image9.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selected1 = true;
                            });
                            print(selected1);
                            if (selected1==true)
                            {
                              _movebackwidget1();
                            }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<CircleBorder>(
                                CircleBorder()),
                            //elevation: MaterialStateProperty(10),
                            splashFactory: InkRipple.splashFactory,
                            overlayColor: MaterialStateProperty.all(
                                Colors.deepOrange.shade400),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        TextButton(
                          child: Container(
                            width: 125,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/image10.png'),
                                  fit: BoxFit.contain),
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              selected2 = true;
                            });
                            if (selected2==true)
                              {
                                _movebackwidget2();
                              }
                          },
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<CircleBorder>(
                                CircleBorder()),
                            //elevation: MaterialStateProperty(10),
                            splashFactory: InkRipple.splashFactory,
                            overlayColor: MaterialStateProperty.all(
                                Colors.deepOrange.shade400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Any Salad',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Any Soup',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.black),
                      )
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)),
                      ),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton.icon(
                            label: Text(
                              'Back',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                            icon: Icon(Icons.arrow_back_ios_outlined),
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                              print('Back to page');
                            },
                            style: ButtonStyle(
                              overlayColor:
                              MaterialStateProperty.all(Colors.white),
                            ),
                          ),
                          SizedBox(width: 60,),
                          MyIconButton( value1 || value2 ?'Next':'Skip', Icons.arrow_forward_ios_outlined,
                                  () {
                                setState(() {
                                  Navigator.pop(context);
                                });
                              }, Colors.black),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 400),
            curve: Curves.easeIn,
            height: _post111,
            bottom: _post1,
            left: _post11,
            child: TextButton(
              onPressed: (){
                _movewidget1();
              },
              child: Container(
                child: Image.asset('images/image9.png'),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<CircleBorder>(
                    CircleBorder()),
                //elevation: MaterialStateProperty(10),
                splashFactory: InkRipple.splashFactory,
                overlayColor: MaterialStateProperty.all(
                    Colors.deepOrange.shade400),
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.ease,
            height: _post222,
            bottom: _post2,
            left: _post22,
            child: TextButton(
              onPressed: (){
                _movewidget2();
              },
              child: Container(
                child: Image.asset('images/image10.png'),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<CircleBorder>(
                    CircleBorder()),
                //elevation: MaterialStateProperty(10),
                splashFactory: InkRipple.splashFactory,
                overlayColor: MaterialStateProperty.all(
                    Colors.deepOrange.shade400),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}