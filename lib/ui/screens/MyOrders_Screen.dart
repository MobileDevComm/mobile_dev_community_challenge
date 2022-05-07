import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/ReusableWidgets.dart';

import '../style/texts.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
        centerTitle: true,
          title:Text('My Orders', style:kHeadline3TextStyle),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(150),
            child: TabBar(
              tabs: [
                Tab(text: "All",
                ),
                Tab(text: "Pending",
                ),
                Tab(text: "Running",
                ),
                Tab(text: "completed",
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 35,),
                Container(
                  height: 80,
                  width: 333,
                    decoration: BoxDecoration(
                      color:Color.fromRGBO(227 , 234, 255 , 1) ,
                      borderRadius:BorderRadius.circular(20),
                    ),
                  child: Center(
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                     Text('You have', style:kBodyText13TextStyle,  ),
                        Text('2,100 ' ,style:kBodyText12TextStyle  ),
                        Text(' pending orders.', style: kBodyText13TextStyle,   ),
                        Text('View here ', style: kBodyText12TextStyle,   ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height:28),
                Container(
                  width: 332,
                  height:251,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top:29,
                        left: 12,
                        child: UserIDContainer(
                            userAddress: '4517 Washington Manchester',
                            userPictureURI: 'assets/images/id_details_picture2.png',
                            userName: 'Leslie Alexander'),
                      ),
                      Positioned(
                        left: 21,
                        bottom: 109,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('1567 Quantities', style:kBodyText13TextStyle ,),
                            SizedBox(width: 134,),
                            Text('#20,220', style: kBodyText12TextStyle,)
                          ],
                        ),
                      ),
                      Positioned(
                        left: 12,
                        bottom: 21,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BottomContainer5(bottomContainerText: 'REJECT'),
                          const SizedBox(width: 42,),
                          BottomContainer4(bottomContainerText: 'ACCEPT')
                        ],
                        ),
                      )


                    ],
                  ),
                ),


                SizedBox(height:28),
                Container(
                  width: 332,
                  height:251,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top:29,
                        left: 12,
                        child: UserIDContainer(
                            userAddress: '6391 Elgin, Delaware 10299',
                            userPictureURI: 'assets/images/id_details_picture1.png',
                            userName: 'Courtney Henry'),
                      ),
                      Positioned(
                        left: 21,
                        bottom: 109,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('1567 Quantities', style:kBodyText13TextStyle ,),
                            SizedBox(width: 134,),
                            Text('#20,220', style: kBodyText12TextStyle,)
                          ],
                        ),
                      ),
                      Positioned(
                        left: 12,
                        bottom: 21,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BottomContainer5(bottomContainerText: 'REJECT'),
                            const SizedBox(width: 42,),
                            BottomContainer4(bottomContainerText: 'ACCEPT')
                          ],
                        ),
                      )


                    ],
                  ),
                ),



                SizedBox(height:28),
                Container(
                  width: 332,
                  height:251,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top:29,
                        left: 12,
                        child: UserIDContainer(
                            userAddress: '2972 Westheimer Rd. Santa',
                            userPictureURI: 'assets/images/id_details_picture3.png',
                            userName: 'Courtney Henry jr'),
                      ),
                      Positioned(
                        left: 21,
                        bottom: 109,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('1567 Quantities', style:kBodyText13TextStyle ,),
                            SizedBox(width: 134,),
                            Text('#20,220', style: kBodyText12TextStyle,)
                          ],
                        ),
                      ),
                      Positioned(
                        left: 12,
                        bottom: 21,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BottomContainer5(bottomContainerText: 'REJECT'),
                            const SizedBox(width: 42,),
                            BottomContainer4(bottomContainerText: 'ACCEPT')
                          ],
                        ),
                      )


                    ],
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
