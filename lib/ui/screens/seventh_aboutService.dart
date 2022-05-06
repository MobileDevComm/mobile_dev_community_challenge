import 'package:flutter/material.dart';
import '../style/texts.dart';
import '../widgets/Reusable containers-Widgets/BottomContainer3.dart';
import '../widgets/Reusable containers-Widgets/ReusableContainer4aboutScreen7.dart';
import '../widgets/ReusableIcons/ArrowLeftIcon.dart';
//import 'package:intl/intl.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const ArrowLeftIcon(),
                    Padding(
                      padding: const EdgeInsets.only(left:50),
                        child: Text('About Service', style:kHeadline3TextStyle,)),
                  ],
                ),
                const SizedBox(height: 25,),
                Container(
                  width:334,
                  height: 223,
                  child: const Image(
                    image: AssetImage('assets/images/suits.png'),),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(image: AssetImage('assets/images/suits.png'))
                  ),
                ),
                const SizedBox(height: 45,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Suit and Blazer', style:kHeadline3TextStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         Icon(Icons.sell, color: Color.fromRGBO(47, 207, 95, 1),size:14.73, ),
                        Text('#2,000',style: kBodyText9TextStyle,)
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment:AlignmentDirectional.centerEnd,
                    child: Text('/pair',style:kBodyText10TextStyle ,)),
                const SizedBox(height: 8,),
                Text(
                    'Laundry has been part of history since humans began to wear clothes, so the methods by which different cultures have dealt with this universal',
                style:kBodyText11TextStyle
                ),
                const SizedBox(height: 20,),
                Text('Item Categories', style:kHeadline9TextStyle ,),
                const SizedBox(height:15),
                Row(
                  children:[
                    Container(
                      width: 96,
                      height: 34,

                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xFFEFF1FF),
                        ),
                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[
                          Text('BedSpread', style:kHeadline10TextStyle),
                          //todo fix this icon or svg picture
                                ]
                      )
                    ),
                    const SizedBox(width:5),
                    Container(
                        width: 96,
                        height: 34,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(19),
                          color: const Color(0xFFEFF1FF),
                        ),

                        child:Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              Text('wome', style:kHeadline10TextStyle),
                            ]
                        )
                    ),
    ],
                ),
                const SizedBox(height: 30,),
                Text('Available Mini Services',style: kHeadline9TextStyle,),
                const SizedBox(height: 15,),
                ReusableContainer2(ContainerText: 'Marvelous Ironing',ContainerPrice: '#220',),
                const SizedBox(height: 7,),
                ReusableContainer2(ContainerText: 'Fantaby Folding',ContainerPrice: '#220',),
               const SizedBox(height: 20,),
               const Align(
                  alignment: AlignmentDirectional.centerEnd,
                    child: BottomCircularContainer())
              ],
            ),
          ),
        ),
      )
    );
  }
}

