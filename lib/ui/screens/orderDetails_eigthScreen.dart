import 'package:flutter/material.dart';
import '../style/texts.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/ReusableWidgets.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:SafeArea(
        child: SingleChildScrollView(
                child: Padding(
                  padding: const  EdgeInsets.all(20.0),
                  child: Column(
                      children:[
                        Row(
                          children :[
                            const ArrowLeftIcon(),
                            Padding(
                              padding: const EdgeInsets.only(left: 50.0),
                              child: Text('Upload Documents', style:kHeadline3TextStyle),
                            ),
                          ],
                        ),
                        const SizedBox( height: 25 ),
                        UserIDContainer(
                          userPictureURI: 'assets/images/id_details_picture1.png',
                          userAddress: 'Courtney Henry',
                          userName: '6391 Elgin, Delaware 10299',
                        ),
                        const SizedBox(height: 32,),
                        Container(
                          height:147,
                          width: 335,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              color:(Color.fromRGBO(248, 248, 248, 1))
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  children: [
                                    const SizedBox(height: 20,),
                                    Text('Order Total',style: kDetailScreen3TextStyle,),
                                    const SizedBox(height: 28,),
                                    Text('Transaction Fee', style: kDetailScreen3TextStyle),
                                    const SizedBox(height: 30,),
                                    Text('Net Total', style: kDetailScreen1TextStyle)
                                  ]
                              ),
                              Column(
                                children: [
                                  const SizedBox(height: 20,),
                                  Text('#20,200', style:  kDetailScreen1TextStyle,),
                                  const SizedBox(height: 28,),
                                  Text('-#400',style:kDetailScreen5TextStyle),
                                  SizedBox(height: 30,),
                                  Text('+#19800',style:kDetailScreen6TextStyle),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height:36),
                        SizedBox(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 Text('Expected Pickup Time', style: kDetailScreen7TextStyle,),
                                 Text('Transaction ID', style: kDetailScreen7TextStyle,)
                               ],
                              ),
                             const SizedBox(height: 11,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('08:30:80pm, ',style: kDetailScreen8TextStyle,),
                                  Text('#456YURG', style: kDetailScreen8TextStyle,)
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 39,),
                        Row(
                          children: [
                            Text('Order', style: kDetailScreen10TextStyle,),
                            Text(' Details',style: kDetailScreen9TextStyle,),
                          ],
                        ),
                        SizedBox(height: 25,),
                        OrderDetailsContainer(
                          orderDetailsDescription: 'A Pair of Socks',
                          orderDetailsPrice: 6750,
                          assetImageURI: 'assets/images/Socks.png',

                        ),
                        const SizedBox(height: 30,),
                        const Divider(),
                        const SizedBox(height: 25,),
                        OrderDetailsContainer(
                          orderDetailsDescription: 'T- Shirt',
                          orderDetailsPrice: 11200,
                          assetImageURI: 'assets/images/T-Shirt.png',
                        ),
                        const SizedBox(height: 30,),
                        const Divider(),
                        const SizedBox(height: 25,),
                        OrderDetailsContainer(
                          orderDetailsDescription: 'Panties\n and Underwear',
                          orderDetailsPrice: 770,
                          assetImageURI: 'assets/images/Panties.png',
                        ),
                        const SizedBox(height: 130,),
                        BottomContainer1(bottomContainerText: 'ACCEPT ORDER'),
                        const SizedBox(height: 10,),
                        BottomContainer2(bottomContainerText: 'REJECT')

                      ]
                  )
                )
            )
        )
    );
  }
}
