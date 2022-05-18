import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/base_button.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 20,bottom:10),
            child: Column(children: [
              Container(
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: 'You have 21,000 pending Orders.',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        )),
                    TextSpan(
                      text: 'View here',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ])),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14.0,bottom: 10),
                    child: Container(
                      height: 650,
                      child: ListView.builder(
                        itemCount: 4,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, bottom: 40),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(0)),
                            child: Card(
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 60,
                                            child: Image.asset(
                                                'assets/images/nfh.jpg',
                                                fit: BoxFit.fill),
                                            decoration: BoxDecoration(
                                                color: Colors.blue.shade800,
                                                shape: BoxShape.circle),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              left: 16.0,
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Lesille Alexander',
                                                      style: kSubtitle1TextStyle,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 90.0),
                                                      child: Container(
                                                        height: 20,
                                                        width: 40,
                                                        decoration: BoxDecoration(
                                                            color: Colors.green,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(8)),
                                                        child: Center(
                                                            child: Text('NEW')),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 10, bottom: 10),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.green,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets.only(
                                                                left: 8.0),
                                                        child: Text(
                                                          '2490 Washinton Marchester',
                                                          style: TextStyle(
                                                              color: Colors.green,
                                                              fontSize: 20),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12.0,
                                          bottom: 12,
                                          left: 10,
                                          right: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '1,567 quantities',
                                            style: kHeadline4TextStyle,
                                          ),
                                          Text(
                                            '₦20,220',
                                            style: kHeadline3TextStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                     Container(
                                            height: 60,
                                            width: 140,
                                            decoration: BoxDecoration(
                                             
                                                color: Colors.blue.shade50,
                                                borderRadius:
                                                
                                                    BorderRadius.circular(30)),
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                                side: BorderSide(color: Colors.green,width: 2),
                                              shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
  ),
                                              
                                              onPressed: () {},
                                              child: Text(
                                                'REJECT',
                                                style:
                                                    TextStyle(color: Colors.green),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 60,
                                            width: 140,
                                            decoration: BoxDecoration(
                                             
                                                color: Colors.green,
                                                borderRadius:
                                                
                                                    BorderRadius.circular(30)),
                                            child: OutlinedButton(
                                              style: OutlinedButton.styleFrom(
                                              shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))
  ),
                                              
                                              onPressed: () {},
                                              child: Text(
                                                'ACCEPT',
                                                style:
                                                    TextStyle(color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                   BaseButton(onPress: () {}, text: 'RECIEVE FROM DISPATCH')
                
                ],
              ),
           
            ]),
          ),
        ),
      ),
    );
  }
}


// Try this

