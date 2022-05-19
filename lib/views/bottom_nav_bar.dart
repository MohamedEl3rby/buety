import 'package:flutter/material.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          color:Color(0xff2B3549),
          child: Column(
            children: [
              const Divider(
                height: 2.0,
                thickness: 6.0,
                color: Color(0xffC6A074),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: (){},
                    child:Column(
                      children:const [
                        Padding(
                          padding: EdgeInsets.only(top:8.0,bottom: 8.0),
                          child: ImageIcon(
                            AssetImage("images/cope.png"),
                            color:Color(0xffC6A074),
                            size: 18,
                          ),
                        ),
                        Text("About Prof.",style:TextStyle(
                          color:Color(0xffC6A074),
                          fontSize: 10.0,
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    color: const Color(0xffC6A074),
                    height: 35,
                    width: 1,
                  ),
                  FlatButton(
                    onPressed: (){},
                    child:Column(
                      children:const [
                        Padding(
                          padding: EdgeInsets.only(top: 8.0,bottom: 8.0),
                          child: ImageIcon(
                            AssetImage("images/question.png"),
                            color:Color(0xffC6A074),
                            size: 19,
                          ),
                        ),
                        Text("Why Us",style:TextStyle(
                          color:Color(0xffC6A074),
                          fontSize: 10.0,
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xffC6A074),
                    height: 35,
                    width: 1,
                  ),
                  FlatButton(
                    onPressed: (){},
                    child:Column(
                      children:const [
                        Padding(
                          padding: EdgeInsets.only(top:8.0,bottom: 8.0),
                          child: ImageIcon(
                            AssetImage("images/hospital.png"),
                            color:Color(0xffC6A074),
                            size: 19,
                          ),
                        ),
                        Text("Our Centers",style:TextStyle(
                          color:Color(0xffC6A074),
                          fontSize: 10.0,
                        )),
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xffC6A074),
                    height: 35,
                    width: 1,
                  ),
                  FlatButton(
                    onPressed: (){},
                    child:Column(
                      children:const [
                        Padding(
                          padding: EdgeInsets.only(top:8.0,bottom: 8.0),
                          child: ImageIcon(
                            AssetImage("images/mail.png"),
                            color:Color(0xffC6A074),
                            size: 19,
                          ),
                        ),
                        Text("Contact Us",style:TextStyle(
                          color:Color(0xffC6A074),
                          fontSize: 10.0,

                        ),),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 10.0,
                thickness: 6.0,
                color: Color(0xffC6A074),
              ),
            ],
          ),
        ),
      ),
    );
  }
}