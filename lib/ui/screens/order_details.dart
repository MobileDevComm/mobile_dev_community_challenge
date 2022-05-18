import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/my_orders.dart';
import 'package:mobile_dev_community_challenge/ui/style/texts.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/widgets.dart';

import '../widgets/buttons/OrderCard.dart';
import '../widgets/buttons/tabButtons.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 6, right: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TabRow(
              text: 'Order Details',
              icon: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.yellowAccent,
                          backgroundImage: AssetImage(
                              'assets/images/reww.png,fit: BoxFit.fill,)'),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 20.0, bottom: 15),
                                child: Text(
                                  'Courtney Henry',
                                  style: kHeadline3TextStyle,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 14.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      '37473jurej  sjwiiskskdk',
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 8, top: 5, bottom: 20),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8.0, bottom: 6, right: 5, left: 5),
                              child: OrderDetailsCard(text1: 'Order Total',text2:'N20,220' ,),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    Column(
                      
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Expected PickUp Time'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 170.0),
                              child: Text('Transaction ID'),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0, top: 10),
                          child: Text(
                            '08:30:80pm',
                            style: kHeadline3TextStyle,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 150.0, top: 10),
                          child: Text(
                            '#456YURG',
                            style: kHeadline3TextStyle,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(text: 'Order', style: kBodyText2TextStyle),
                          TextSpan(
                            text: ' Details',
                            style: kSubtitle2TextStyle,
                          )
                        ]),
                      ),
                    ),
                    Container(height: 150,
                      child: Card(
                        child: Row(
                          children: [
                            Container(
                                height: 120,
                                width: 110,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Image.asset('assets/images/reww.jpg',
                                    fit: BoxFit.fill)),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 8.0, left: 16,top:8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'A pair of Socks',
                                      style: kSubtitle1TextStyle,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, bottom: 9),
                                      child: Text(
                                        '156 quantities',
                                        style: kHeadline4TextStyle,
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          height: 40,
                                          
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade50,
                                            borderRadius: BorderRadius.circular(15)),
                                          child: OutlinedButton(
                                              onPressed: () {},
                                              child: Text(
                                                'Ironing',
                                                style:
                                                    TextStyle(color: Colors.green),
                                              )),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left:4.0),
                                          child: Container(
                                                height: 40,
                      
                                          
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade50,
                                              borderRadius: BorderRadius.circular(15)),
                                            child: OutlinedButton(
                                                onPressed: () {},
                                                child: Text(
                                                  'Folding',
                                                  style:
                                                      TextStyle(color: Colors.green),
                                                )),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                           Padding(
                             padding: const EdgeInsets.only(left:10.0),
                             child: Text('#6,745',style: kSubtitle1TextStyle,),
                           )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:70.0),
                      child: BaseButton(
                        onPress: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyOrder()));
                        },
                        text: 'ACCEPT ORDER',
                        bgColor: Colors.green,
                      ),
                    ),
                    BaseButton(
                      onPress: () {},
                      text: 'REJECT',
                      textStyle: TextStyle(color: Colors.green),
                      borderColor: Colors.green,

                      bgColor: Colors.blue.shade50,
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

