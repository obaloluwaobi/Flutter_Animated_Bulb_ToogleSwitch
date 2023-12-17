import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//////////////////////////////////////////////////
//////////////////////////////////////////////////
///Day 9 out of 100days
///Drop a Star if you like it
/////////////////////////////////////////////////
/////////////////////////////////////////////////
/////////////////////////////////////////////////


class LightPage extends StatefulWidget {
  const LightPage({Key? key}) : super(key: key);

  @override
  State<LightPage> createState() => _LightPageState();
}

class _LightPageState extends State<LightPage> {
  final _enable = true;
  bool _on = false;
  double _slider = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: _on ? Colors.yellowAccent : const Color(0xFFECECEC),
      body: SafeArea(
        top: _enable,
        bottom: _enable,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  //title
                  const Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 28.0,vertical: 30),
                    child:  Text('KITCHEN',style:  TextStyle(fontWeight: FontWeight.w700,fontSize: 30,color: Colors.black),),
                  ),

                  Align(
                    alignment: Alignment.topRight,
                    child:Image.asset('assets/bulb.png'),
                  ),
                ],
              ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text('Island Kitchen Bar',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                    ),),
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text('LED Pendant Ceiling Light',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold
                    ),),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Text('8 Watts',style: TextStyle(fontSize: 20,color: Colors.grey[800],fontWeight: FontWeight.bold
                    ),),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Row(
                      children: [
                        CupertinoSwitch(
                            thumbColor:_on?Colors.white:Colors.green,
                            activeColor: Colors.black,
                            value: _on,
                            onChanged: (value){
                              setState(() {
                                _on = value;
                              });
                            }),
                        Text(_on ? 'ON' : 'OFF',style: TextStyle(
                            color: _on? Colors.black : Colors.black87,
                            fontWeight:FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  if(_on)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Light Intensity',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),),
                          Row(
                            children: [
                              const Icon(Icons.light_mode_outlined),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                                child: Slider.adaptive(
                                  inactiveColor: Colors.black54,
                                  activeColor: Colors.black,
                                  thumbColor: Colors.white,
                                    value: _slider,
                                    onChanged: (double val){
                                    setState(() {
                                      _slider = val;
                                    });


                                    //  _on = value;
                                    }),
                              ),
                              const Icon(Icons.light_mode_rounded,color: Colors.black,),
                            ],
                          )
                        ],),
                    ),
                ],
              ),
        ),
      ),
    );
  }
}
