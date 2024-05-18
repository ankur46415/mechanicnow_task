import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('services screen'),
      ),
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5,),
                child: Container(
                  //color: Colors.blue,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/car.png'),
                        fit: BoxFit.cover,
                      ),
                      border: Border(
                          top: BorderSide(width: 1, color: Colors.grey)
                      )
                  ),
                  child: Image.asset('assets/images/car.png'),
                ),
              ),
              Container(
                color: Colors.black,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text("Location",style: TextStyle(color: Colors.white)),
                        SizedBox(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding:  EdgeInsets.only(top: 8,right: 20,left: 5),
                                hintText: "lucknow",
                              ),
                            )
                        ),
                      ],
                    ), Column(
                      children: [
                        Text("Brand",style: TextStyle(color: Colors.white)),
                        SizedBox(
                            width: 150,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  // borderRadius: BorderRadius.circular(8),
                                ),
                                contentPadding:  EdgeInsets.only(top: 8,right: 20,left: 5),
                                hintText: "Select Brand",
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                ),
              ),const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text("Model"),
                      SizedBox(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:  EdgeInsets.only(top: 8,left: 15),
                              hintText: "Select model",
                            ),
                          )
                      ),
                    ],
                  ), Column(
                    children: [
                      Text("Fuel"),
                      SizedBox(
                          width: 150,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                // borderRadius: BorderRadius.circular(8),
                              ),
                              contentPadding:  EdgeInsets.only(top: 8,left: 15),
                              hintText: "Select Fuel",
                            ),
                          )
                      ),
                    ],
                  ),

                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(top: 15,left: 14,right: 14),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          textStyle:  const TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.normal),
                        ),
                        onPressed: () {},
                        child:  const Text('Book Services'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
      )
        ]
      )
    );
  }
}
