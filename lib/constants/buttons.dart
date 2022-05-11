import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .85,
      decoration: BoxDecoration(
        color: Color(0xffC6A074),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(15.0),
          primary: Colors.white,
          textStyle: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
        child: const Text("Breast Surgeries"),
      ),
    );
  }
}

class TextF extends StatelessWidget {
  const TextF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0,left: 25,bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 15.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Full Name",
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}

class ContainerDetails extends StatelessWidget {
  const ContainerDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*.4,
      width: MediaQuery.of(context).size.width*.8,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xffC6A074),

            Color(0xffD8B894),
          ],
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*.03,
                ),
                const Icon(Icons.location_on,size:40,color:Color(0xffFFFFFF),),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.04,
                ),
                const Icon(Icons.local_phone,size:40,color:Color(0xffFFFFFF),),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.04,
                ),
                const Icon(Icons.phone_android,size:40,color:Color(0xffFFFFFF),),
                SizedBox(
                  height: MediaQuery.of(context).size.height*.04,
                ),
                const Icon(Icons.mail,size:40,color:Color(0xffFFFFFF),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

