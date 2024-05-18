import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('lucknow , your cars'),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20,left: 25,right: 20,bottom: 30),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black26,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:  EdgeInsets.only(right: 14,left: 20,top: 20,bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User LogIn"),
                    const Padding(
                      padding:  EdgeInsets.only(top: 30,left: 14,),
                      child: Text(
                        "Mobile Number",
                        textScaler: TextScaler.linear(Constants.factor),
                        //style: AppStyle.montserrat12textOne400,
                      ),
                    ),
                    Padding(
                      padding:  const EdgeInsets.symmetric(horizontal: 14,vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          contentPadding:  const EdgeInsets.only(top: 8,right: 20,left: 20),
                          hintText: "Enter Your Number",
                          //hintStyle: AppStyle.montserrat12textTwo600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15,left: 14),
                      child: ElevatedButton(
                        child: Text('Send OTP'),
                        style: ElevatedButton.styleFrom(
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 14,bottom: 20),
                      child: Row(
                        children: [
                          Text("NEW USER ?"),
                      TextButton(
                        onPressed: () {  },
                        child: Text(
                          "REGISTER",
                          style: TextStyle(fontSize: 13),
                        ),
                      )
                        ]
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

