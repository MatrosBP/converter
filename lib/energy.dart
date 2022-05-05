import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Energy extends StatefulWidget {
  const Energy({Key? key,}) : super(key: key);




  @override
  State<Energy> createState() => _EnergyState();
}

class _EnergyState extends State<Energy> {
  bool _isBlockedSpaceKey = false;
  final myController = TextEditingController();
  String title = 'Дж';
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
        _kmS = _kmH*0.001;
        _mpH = _kmH*0.0002388;
        _mpS = _kmH*0.2388;
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
        _kmH = _kmS*1000;
        _mpH = _kmS*0.2388;
        _mpS = _kmS*238.8;
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
        _kmH = _mpH*4187;
        _kmS = _mpH*4.187;
        _mpS = _mpH*1000;
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
        _kmH = _mpS*4.187;
        _kmS = _mpS*0.004187;
        _mpH = _mpS*0.001;
        _mS = _mpS*1609;
        _fS = _mpS*1609;
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
      title = 'Дж';
      Mera = 1;
    });
  }
  void _incrementKmS() {
    setState(() {
      title = 'кДж';
      Mera = 2;
    });
  }
  void _incrementMpH() {
    setState(() {
      title = 'Ккал';
      Mera = 3;
    });
  }
  void _incrementMpS() {
    setState(() {
      title = 'Кал';
      Mera = 4;
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
                        Text('Дж'),
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
                        Text('кДж'),
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
                        Text('ккал'),
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
                        Text('кал'),
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
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}