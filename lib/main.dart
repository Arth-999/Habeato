import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:habeato/nextpage.dart';
import 'constants.dart';

void main() => runApp(HabEato());

class HabEato extends StatefulWidget {
  @override
  _HabEatoState createState() => _HabEatoState();
}

class _HabEatoState extends State<HabEato> {
  bool value = false;
  int press=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) => Scaffold(
        backgroundColor: Color(0xFFFCD2AD),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                height: 175,
                color: Color(0xFFFCD2AD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
                      child: Text(
                        'How does your Dinner look like?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
                      child: Text(
                        '(excluding salad, curd and sides)',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Text(
                      'Select any 1 or more plates',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                    child: GridView.count(
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      children: List.generate(8, (index) {
                        return Hero(
                          tag: 'tag${index+1}',
                          child: Container(
                              decoration: BoxDecoration(
                                //shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(1),
                                    spreadRadius: -30,
                                    blurRadius: 5,
                                    offset: Offset(0, 7),
                                  )
                                ],
                                //color: Colors.white,
                              ),
                              child: TextButton(
                                child: Image.asset(
                                  'images/image${index + 1}.png',
                                ),
                                onPressed: () {
                                  value ? setState(() {
                                    value = false;
                                    print(value);
                                  }) : setState(() {
                                    value = true;
                                    press=index+1;
                                    number=press;
                                    print(press);
                                  });
                                  print('pressed');
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
                            ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5)),
                ),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        // setState(() {
                        //   Navigator.push(context,
                        //       MaterialPageRoute(builder: (context) {
                        //         return SidesPage();
                        //       }));
                        // });
                        print('hello1');
                      },
                    style: ButtonStyle(overlayColor:  MaterialStateProperty.all(
                        Colors.white),),
                    ),
                    MyIconButton('Next', Icons.arrow_forward_ios_outlined, () {
                      setState(() {
                        if (value==true){
                          value=false;
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return SidesPage();
                              }));
                        }
                      });
                      print('next pressed');
                    }, value ? Colors.black : Colors.grey),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}
