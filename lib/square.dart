import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Square extends StatefulWidget {
  const Square({Key? key,}) : super(key: key);




  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {
  bool _isBlockedSpaceKey = false;
  final myController = TextEditingController();
  String title = 'Km^\u{00B2}';
  int _counter = 0;
  double _kmH = 0.0;
  double _kmS = 0.0;
  double _mpH = 0.0;
  double _mpS = 0.0;
  double _mS = 0.0;
  double _fS = 0.0;
  String x = '0';
  String SkmH = '0';
  String iText = '0';
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
        _kmS = _kmH*1000000;
        _mpH = _kmH*100000000;
        _mpS = _kmH*10763910;
        _mS = _kmH*1000;
        _fS = _kmH*100;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }else if(Mera == 2){
        _kmS = double.parse(iText);
        _kmH = _kmS*0.000001;
        _mpH = _kmS*100;
        _mpS = _kmS*10.76;
        _mS = _kmS*0.0001;
        _fS = _kmS*0.001;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 3){
        _mpH = double.parse(iText);
        _kmH = _mpH*0.00000001;
        _kmS = _mpH*0.01;
        _mpS = _mpH*0.1076;
        _mS = _mpH*0.000001;
        _fS = _mpH*0.00001;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 4){
        _mpS = double.parse(iText);
        _kmH = _mpS*0.0000000929;
        _kmS = _mpS*0.0929;
        _mpH = _mpS*9.29;
        _mS = _mpS*0.00000929;
        _fS = _mpS*0.0000929;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 5){
        _mS = double.parse(iText);
        _kmH = _mS*0.01;
        _kmS = _mS*10000;
        _mpH = _mS*1000000;
        _mpS = _mS*107639;
        _fS = _mS*10;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 6){
        _fS = double.parse(iText);
        _kmH = _fS*0.001;
        _kmS = _fS*1000;
        _mpH = _fS*100000;
        _mpS = _fS*10764;
        _mS = _fS*0.1;
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
      title = 'Km^\u{00B2}';
      Mera = 1;
    });
  }
  void _incrementKmS() {
    setState(() {
      title = 'M^\u{00B2}';
      Mera = 2;
    });
  }
  void _incrementMpH() {
    setState(() {
      title = 'Dm\u{00B2}';
      Mera = 3;
    });
  }
  void _incrementMpS() {
    setState(() {
      title = 'yd\u{00B2}';
      Mera = 4;
    });
  }
  void _incrementMS() {
    setState(() {
      title = 'декар';
      Mera = 5;
    });
  }
  void _incrementFS() {
    setState(() {
      title = 'га';
      Mera = 6;
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
                        Text('Km\u{00B2}'),
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
                        Text('M\u{00B2}'),
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
                        Text('Dm\u{00B2}'),
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
                        Text('декар'),
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
                        Text('ft\u{00B2}'),
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
                        Text('га'),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}