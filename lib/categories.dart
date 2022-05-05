import 'package:flutter/material.dart';


class Categories extends StatelessWidget {
  const Categories({Key? key, required this.title, required this.color, required this.action, }) : super(key: key);
  final String title;
  final String color;
  final VoidCallback action;
  @override
  Widget build(BuildContext context) {
    if(color == '1'){
      return SizedBox(
        height: 180,
        width: 180,
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
            overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
          ),
          onPressed: action,
          child: Column(
            children: [
              Container(
                height: 120.0,
                width: 120.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/spe.png'),

                  ),

                ),
              ),
              Text(title),

            ],
          )

        ),
      );

    }else if(color == '2'){
      return SizedBox(
        height: 180,
        width: 180,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
            onPressed: action,
            child: Column(
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/dli.png'),

                    ),

                  ),
                ),
                Text(title),

              ],
            )

        ),
      );

    }else if(color == '3'){
      return SizedBox(
        height: 180,
        width: 180,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
            onPressed: action,
            child: Column(
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/plo.png'),

                    ),

                  ),
                ),
                Text(title),

              ],
            )

        ),
      );

    }else if(color == '4'){
      return SizedBox(
        height: 180,
        width: 180,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
            onPressed: action,
            child: Column(
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/ene.png'),

                    ),

                  ),
                ),
                Text(title),

              ],
            )

        ),
      );

    }
    else if(color == '5'){
      return SizedBox(
        height: 180,
        width: 180,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
            onPressed: action,
            child: Column(
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/val.png'),

                    ),

                  ),
                ),
                Text(title),

              ],
            )

        ),
      );

    }
    else{
      return SizedBox(
        height: 180,
        width: 180,
        child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              overlayColor: MaterialStateProperty.all<Color>(Colors.deepPurple),
            ),
            onPressed: action,
            child: Column(
              children: [
                Container(
                  height: 120.0,
                  width: 120.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/tim.png'),

                    ),

                  ),
                ),
                Text(title),

              ],
            )

        ),
      );
    }
  }
}