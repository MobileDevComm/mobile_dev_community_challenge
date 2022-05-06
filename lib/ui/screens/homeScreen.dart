import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/ReusableWidgets.dart';

import '../widgets/Reusable containers-Widgets/TransactionContainerDebit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 419-81,
                width: 375,
                color: const Color.fromRGBO(47, 205, 95, 1),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                 clipBehavior: Clip.none,
                  //alignment: Alignment.center,
                  children:[
                   Column(
                    children: [
                      const SizedBox(height: 121-81, ),
                      Text('Hi, Emmanuel' ,style:kHomeScreen1TextStyle),
                      const SizedBox(height: 25,),
                      Text('Your Available Balance', style: kHomeScreen2TextStyle,),
                      const SizedBox(height: 10,),
                      Text('#500,000', style: kHomeScreen3TextStyle),
                      const SizedBox(height: 35,),
                      Container(
                        width:128,
                        height:41,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color.fromRGBO(255, 255, 255, 1),),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Text('WITHDRAW',style: kHomeScreen4TextStyle,),
                            const SizedBox(width:7.85),
                            const Icon(Icons.account_balance,  color: const Color.fromRGBO(47, 79, 255, 1),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 70,),
                    ],
                   ),
                    Positioned(
                      bottom: -34,
                      child: Container(
                        width: 333,
                        height: 60,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(255, 255, 255, 1),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:[
                            Container(
                                width:44,
                                height:44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color: const Color.fromRGBO(255, 237, 243, 1),
                                ),
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: const [
                                    Icon(Icons.shopping_bag, color: Color.fromRGBO(254, 51, 123, 1),),
                                  ],
                                )
                            ),
                            Row(
                              children: [
                                Text('You have a new order from', style: kHomeScreen5TextStyle,),
                                Text(' Adeyemi J.', style: kHomeScreen6TextStyle,)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ]
                ),
              ),
               const SizedBox(height: 65,),
             Padding(
               padding: const EdgeInsets.all(10),
               child: Column(
                 children: [
                   Row(
                     children:[
                       Text('Quick ', style:kHomeScreen7TextStyle ,),
                       Text(' Analytics',style: kHomeScreen8TextStyle,),
                     ],
                   ),
                   SizedBox(
                     height: 185,
                     width:325,
                     child: ListView(
                       scrollDirection: Axis.horizontal,
                       children: [
                         PendingOrderTypeContainer(
                             OrderNumber: 278,
                             OrderType: 'Pending Order',
                         ),
                         const SizedBox(width:15),
                         RunningOrderTypeContainer(
                           OrderNumber: 324,
                           OrderType: 'Running Order',
                          ),
                         const SizedBox(width:15),
                         CreateOrderTypeContainer(
                           OrderNumber: 601,
                           OrderType: 'Create Order',
                          )
                       ],
                     ),
                   ),
                 const  SizedBox(height:50,
                 ) ,
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Row(
                         children: [
                           Text('Recent ',style: kHomeScreen7TextStyle,),
                           Text('Transactions',style:kHomeScreen8TextStyle)
                         ],
                       ),
                       Text('See all',style: kHomeScreen12TextStyle,),
                     ],
                   ),
                   const SizedBox(height:30),
                   TransactionContainerCredit(
                     TransactionDescription: 'Payment from Damoche',
                     TransactionAmount: 4000,
                     TransactionTime: 'Yesterday at 10:20:59pm',),
                   const SizedBox(height: 20, ),
                   const Divider(
                     thickness:1,
                     color:Color.fromRGBO(239, 239, 239, 1),
                   ),
                   TransactionContainerCredit(
                     TransactionDescription: 'Payment from Ogunade',
                     TransactionAmount: 1000,
                     TransactionTime: 'Yesterday at 10:20:59pm',),
                   const SizedBox(height: 20, ),
                   const Divider(
                     thickness:1,
                     color:Color.fromRGBO(239, 239, 239, 1),
                   ),
                   TransactionContainerDebit(
                     TransactionDescription: 'Withraw to 3456****',
                     TransactionAmount: 3000,
                     TransactionTime: 'Yesterday at 10:20:59pm',),
                   const SizedBox(height: 20, ),
                   const Divider(
                     thickness:1,
                     color:Color.fromRGBO(239, 239, 239, 1),
                   ),
                   TransactionContainerCredit(
                     TransactionDescription: 'Payment from Akin',
                     TransactionAmount: 5000,
                     TransactionTime: 'Yesterday at 10:20:59pm',),
                   const SizedBox(height: 20, ),
                   const Divider(
                     thickness:1,
                     color:Color.fromRGBO(239, 239, 239, 1),
                   )
                 ],
               ),

             )


                                  ],
                                  ),
        ),
      )
                              );
                            }
                            }

