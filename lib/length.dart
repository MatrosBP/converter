import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Length extends StatefulWidget {
  const Length({Key? key,}) : super(key: key);




  @override
  State<Length> createState() => _LengthState();
}

class _LengthState extends State<Length> {
  bool _isBlockedSpaceKey = false;
  final myController = TextEditingController();
  String title = 'Km';
  int _counter = 0;
  double _kmH = 0.0;
  double _kmS = 0.0;
  double _mpH = 0.0;
  double _mpS = 0.0;
  double _mS = 0.0;
  double _test = 0.0;
  double _fS = 0.0;
  String x = '0';
  String SkmH = '0';
  String iText = '0';
  String Test = '0';
  String SkmS = '0';
  String SmpS = '0';
  String SmpH = '0';
  String SmS = '0';
  String SfS = '0';
  int Mera = 1;

  void _incrementCounter() {
    setState(() {
      if(Mera == 1){
        _kmH = double.parse(iText);
        _kmS = _kmH*1000;
        _mpH = _kmH*10000;
        _mpS = _kmH*0.6214;
        _mS = _kmH*1094;
        _fS = _kmH*3281;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }else if(Mera == 2){
        _kmS = double.parse(iText);
        _kmH = _kmS*0.001;
        _mpH = _kmS*10;
        _mpS = _kmS*0.0006214;
        _mS = _kmS*1.094;
        _fS = _kmS*3.281;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 3){
        _mpH = double.parse(iText);
        _kmH = _mpH*0.0001;
        _kmS = _mpH*0.1;
        _mpS = _mpH*0.00006214;
        _mS = _mpH*0.1094;
        _fS = _mpH*0.3281;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 4){
        _mpS = double.parse(iText);
        _kmH = _mpS*1.609;
        _kmS = _mpS*1609;
        _mpH = _mpS*16093;
        _mS = _mpS*1760;
        _fS = _mpS*5280;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 5){
        _mS = double.parse(iText);
        _kmH = _mS*0.0009144;
        _kmS = _mS*0.0009144;
        _mpH = _mS*9.144;
        _mpS = _mS*0.0005682;
        _fS = _mS*3;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 6){
        _fS = double.parse(iText);
        _kmH = _fS*0.0003048;
        _kmS = _fS*0.3048;
        _mpH = _fS*3.048;
        _mpS = _fS*0.0001894;
        _mS = _fS*0.3333;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 7){
        _test = double.parse(iText);
        _fS= _test*1000;
        _kmH = _test*0.0003048;
        _kmS = _test*0.3048;
        _mpH = _test*3.048;
        _mpS = _test*0.0001894;
        _mS = _test*0.3333;
        Test =_test.toString();
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
    });
  }
  void _incrementKmH() {
    setState(() {
      title = 'Km';
      Mera = 1;
    });
  }
  void _incrementKmS() {
    setState(() {
      title = 'M';
      Mera = 2;
    });
  }
  void _incrementMpH() {
    setState(() {
      title = 'Dm';
      Mera = 3;
    });
  }
  void _incrementMpS() {
    setState(() {
      title = 'Ml';
      Mera = 4;
    });
  }
  void _incrementMS() {
    setState(() {
      title = 'Yd';
      Mera = 5;
    });
  }
  void _incrementFS() {
    setState(() {
      title = 'Ft';
      Mera = 6;
    });
  }
  void _incrementTest() {
    setState(() {
      title = 'Test';
      Mera = 7;
    });
  }
  void _delete() {
    setState(() {
      SkmH = '0';
      iText = '0';
      SkmS = '0';
      SmpS = '0';
      SmpH = '0';
      SmS = '0';
      SfS = '0';
      _counter = 0;
      myController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset : false,
      appBar: AppBar(
      ),
      body: Center(

        child: Column(

          children: <Widget>[
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 100,top: 20),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(title),
                          ),
                          SizedBox(
                            width: 150,
                            height: 100,
                            child: TextFormField(
                              controller: myController,
                              decoration: new InputDecoration(border: OutlineInputBorder(),),
                              onChanged: (text){
                                iText = text;
                                _incrementCounter();
                              },
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(r"^\d+\.?\d{0,5}")),
                              ],
                              keyboardType: TextInputType.number,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                          ),
                          onPressed: (){
                            _delete();
                          },
                          child: Text("Очистить"),

                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Km'),
                        Container(
                          height: 70,
                          width: 150,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                            ),
                            onPressed: (){
                              _incrementKmH();
                            },
                            child: Text(SkmH),

                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('M'),
                        Container(
                          height: 70,
                          width: 150,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                            ),
                            onPressed:(){
                              _incrementKmS();
                            },
                            child: Text(SkmS),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Dm'),
                        Container(
                          height: 70,
                          width: 150,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                            ),
                            onPressed: (){
                              _incrementMpH();
                            },
                            child: Text(SmpH),

                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Mi'),
                        Container(
                          height: 70,
                          width: 150,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                            ),
                            onPressed:(){
                              _incrementMpS();
                            },
                            child: Text(SmpS),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text('Yd'),
                        Container(
                          height: 70,
                          width: 150,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                            ),
                            onPressed: (){
                              _incrementMS();
                            },
                            child: Text(SmS),

                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text('Ft'),
                        Container(
                          height: 70,
                          width: 150,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                            ),
                            onPressed:(){
                              _incrementFS();
                            },
                            child: Text(SfS),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [

                    Column(
                      children: [
                        Text('Test'),
                        Container(
                          height: 70,
                          width: 150,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
                            ),
                            onPressed:(){
                              _incrementTest();
                            },
                            child: Text(Test),

                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}