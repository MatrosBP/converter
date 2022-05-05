import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Currency extends StatefulWidget {
  const Currency({Key? key,}) : super(key: key);




  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  bool _isBlockedSpaceKey = false;
  final myController = TextEditingController();
  String title = 'USD';
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
        _kmS = _kmH*0.9271;
        _mpH = _kmH*0.7789;
        _mpS = _kmH*128.5;
        _mS = _kmH*0.9575;
        _fS = _kmH*77.37;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }else if(Mera == 2){
        _kmS = double.parse(iText);
        _kmH = _kmS*1.079;
        _mpH = _kmS*0.8401;
        _mpS = _kmS*138.6;
        _mS = _kmS*1.033;
        _fS = _kmS*83.46;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 3){
        _mpH = double.parse(iText);
        _kmH = _mpH*1.284;
        _kmS = _mpH*1.284;
        _mpS = _mpH*165;
        _mS = _mpH*1.229;
        _fS = _mpH*99.35;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 4){
        _mpS = double.parse(iText);
        _kmH = _mpS*0.007784;
        _kmS = _mpS*0.007216;
        _mpH = _mpS*0.006062;
        _mS = _mpS*0.007453;
        _fS = _mpS*0.6023;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 5){
        _mS = double.parse(iText);
        _kmH = _mS*1.044;
        _kmS = _mS*0.9682;
        _mpH = _mS*0.8134;
        _mpS = _mS*134.2;
        _fS = _mS*80.81;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 6){
        _fS = double.parse(iText);
        _kmH = _fS*0.01292;
        _kmS = _fS*0.01198;
        _mpH = _fS*0.01007;
        _mpS = _fS*1.66;
        _mS = _fS*0.01237;
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
      title = 'USD';
      Mera = 1;
    });
  }
  void _incrementKmS() {
    setState(() {
      title = 'EUR';
      Mera = 2;
    });
  }
  void _incrementMpH() {
    setState(() {
      title = 'GBP';
      Mera = 3;
    });
  }
  void _incrementMpS() {
    setState(() {
      title = 'JPY';
      Mera = 4;
    });
  }
  void _incrementMS() {
    setState(() {
      title = 'CHF';
      Mera = 5;
    });
  }
  void _incrementFS() {
    setState(() {
      title = 'RUB';
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
                        Text('USD'),
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
                        Text('EUR'),
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
                        Text('GBP'),
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
                        Text('JPY'),
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
                        Text('CHF'),
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
                        Text('RUB'),
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