import 'package:flutter/material.dart';

import '../../../constant/constant.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('search screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:   const EdgeInsets.only(top: 35,bottom: 10,right: 34,left: 24),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        contentPadding:  const EdgeInsets.only(top: 8,right: 20,left: 10),
                        hintText: "Search",
                       //hintStyle: AppStyle.montserrat12textTwo600,
                      ),
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(top: 20,left: 14),
                    child:  Text(
                      "Recent searches",
                      textScaler:    TextScaler.linear(Constants.factor),
                      //style: AppStyle.montserrat12textOne400,
                    ),
                  ),
                   Row(
                    children: [
                     Expanded(
                         child:Padding(
                           padding:  EdgeInsets.only(left: 10,right: 10,top: 20),
                           child: RichText(
                             text: TextSpan(
                               style:  TextStyle(color: Colors.black),
                               children: <TextSpan>[
                                 TextSpan(text: 'Car Wash   car wash   car wash   car wash   car wash  ', style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal)),
                               ],
                             ),
                           ),
                         ),
                     )
                    ],
                  ),
                  const Padding(
                    padding:  EdgeInsets.only(top: 20,left: 14),
                    child:  Text(
                      "Popular searches",
                      // textScaler:   const TextScaler.linear(Constants.factor),
                      // style: AppStyle.montserrat12textOne400,
                    ),
                  ),
                   Row(
                    children: [
                      Expanded(
                        child:Padding(
                          padding:  EdgeInsets.only(left: 10,right: 10,top: 30),
                          child: RichText(
                            text: TextSpan(
                              style:  TextStyle(color: Colors.black,fontSize: 30),
                              children: <TextSpan>[
                                TextSpan(text: 'Car Wash   car wash   car wash   car wash   car wash Car Wash   car wash   car wash   car wash   car wash  ', style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:  FontWeight.normal)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

