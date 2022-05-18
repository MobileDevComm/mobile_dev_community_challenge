import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/base_tabc_profile.dart';
import 'package:mobile_dev_community_challenge/ui/screens/create1.dart';
import 'package:mobile_dev_community_challenge/ui/screens/service_added.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/base_button.dart';

import '../style/texts.dart';
import '../widgets/buttons/add_services.dart';
import '../widgets/buttons/tabButtons.dart';

class SuitBlazer extends StatelessWidget {
  const SuitBlazer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar( leading: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Container(
              height: 49,
              width: 64,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CreateScreen1()));},
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Suit and Blazer',
              style: kHeadline6TextStyle,
            ),)
        
          ),
          body:
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left:15.0,top: 10,right: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Add Mini-Service',
                        style: kHeadline1TextStyle,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Ament mini nonsuri dhrehfueh hrgueujrjhwjkxnjhdji djhdihiddskskhid jdjhdfhd djnjjd fueurjdhui dfriukmskdsrfihuiwhg yismeu imsetsb hdtesoldnsj hsesje suensudgw hsgehw wehsies euwuyed',
                        style: kHeadline4TextStyle,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                              AddServices(hinttext: '       Folding',),
                              AddServices(hinttext: '       50',),
                         
                        ],
                      ),
                      
                      Padding(
                        padding: const EdgeInsets.only(left: 290.0,top:10,bottom:10,right:3),
                        child: TextButton(
                          onPressed: (){},
                          child: Text('Delete',style: kSubtitle2TextStyle,)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 340.0),
                        child: Container(
                          height: 50,
                          width: 130,
                                                 decoration: BoxDecoration(
    color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
          color: Colors.green, width: 1)),
                          child: Center(
                            child: OutlinedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [Icon(Icons.add), Text('ADD NEW')],
                                )),
                          ),
                        ),
                      ),

                      BaseButton(
                        onPress: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewService()));
                        },
                        text: 'COMPLETE',
                      )
                    ],
                  ),
                ),
              ),
         
          ),
   
    );
  }
}

