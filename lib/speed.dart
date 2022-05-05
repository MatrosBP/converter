import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Speed extends StatefulWidget {
  const Speed({Key? key,}) : super(key: key);




  @override
  State<Speed> createState() => _SpeedState();
}

class _SpeedState extends State<Speed> {
  bool _isBlockedSpaceKey = false;
  final myController = TextEditingController();
  String title = 'Km/h';
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
      _kmS = _kmH*0.0002778;
      _mpH = _kmH*0.6214;
      _mpS = _kmH*0.0001726;
      _mS = _kmH*0.2778;
      _fS = _kmH*0.9114;
      SkmH = _kmH.toString();
      SkmS = _kmS.toString();
      SmpH = _mpH.toString();
      SmpS = _mpS.toString();
      SmS = _mS.toString();
      SfS = _fS.toString();
      }else if(Mera == 2){
        _kmS = double.parse(iText);
        _kmH = _kmS*3600;
        _mpH = _kmS*2237;
        _mpS = _kmS*0.6214;
        _mS = _kmS*1000;
        _fS = _kmS*3281;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 3){
        _mpH = double.parse(iText);
        _kmH = _mpH*1.609;
        _kmS = _mpH*0.000447;
        _mpS = _mpH*0.000447;
        _mS = _mpH*0.000447;
        _fS = _mpH*1.467;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 4){
        _mpS = double.parse(iText);
        _kmH = _mpS*5794;
        _kmS = _mpS*1.609;
        _mpH = _mpS*3600;
        _mS = _mpS*1609;
        _fS = _mpS*1609;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 5){
        _mS = double.parse(iText);
        _kmH = _mS*3.6;
        _kmS = _mS*0.001;
        _mpH = _mS*2.237;
        _mpS = _mS*0.0006214;
        _fS = _mS*3.281;
        SkmH = _kmH.toString();
        SkmS = _kmS.toString();
        SmpH = _mpH.toString();
        SmpS = _mpS.toString();
        SmS = _mS.toString();
        SfS = _fS.toString();
      }
      else if(Mera == 6){
        _fS = double.parse(iText);
        _kmH = _fS*1.097;
        _kmS = _fS*0.0003048;
        _mpH = _fS*0.6818;
        _mpS = _fS*0.0001894;
        _mS = _fS*0.3048;
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
      title = 'Km/h';
      Mera = 1;
    });
  }
  void _incrementKmS() {
    setState(() {
      title = 'Km/s';
      Mera = 2;
    });
  }
  void _incrementMpH() {
    setState(() {
      title = 'Mp/h';
      Mera = 3;
    });
  }
  void _incrementMpS() {
    setState(() {
      title = 'Mp/s';
      Mera = 4;
    });
  }
  void _incrementMS() {
    setState(() {
      title = 'M/s';
      Mera = 5;
    });
  }
  void _incrementFS() {
    setState(() {
      title = 'F/s';
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
                        Text('Km/h'),
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
                        Text('Km/s'),
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
                        Text('Mp/h'),
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
                        Text('Mp/s'),
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
                        Text('M/s'),
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
                        Text('F/s'),
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