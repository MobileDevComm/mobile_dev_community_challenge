import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/base_tabc_profile.dart';
import 'package:mobile_dev_community_challenge/ui/screens/profile.dart';
import 'package:mobile_dev_community_challenge/ui/screens/service_added.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/categories.dart';

import '../style/texts.dart';
import '../widgets/buttons/available_services.dart';
import '../widgets/buttons/tabButtons.dart';

class AboutService extends StatelessWidget {
  const AboutService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BaseControl()));
          },
          child: Icon(
            Icons.edit,
            color: Colors.white,
          ),
          backgroundColor: Colors.green,
        ),
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Container(
              height: 49,
              width: 64,
              decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10)),
              child: IconButton(
                onPressed: () {Navigator.push(context,
                          MaterialPageRoute(builder: (context) => NewService()));},
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'About Service',
              style: kHeadline6TextStyle,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
                child: Image.asset('assets/images/pppppp.png',fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Suit and Blazer',style: kHeadline2TextStyle,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.amp_stories,size: 30,color: Colors.green),
                             Text('2,000',style: TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.green,
  fontSize: 20,),),
                        
                          ],
                        ),
                      Padding(
                        padding: const EdgeInsets.only(left:60.0),
                        child: Text('/pair'),
                      )],
                    ),
                   
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'kjsijiowerjksjkheihwinsj sdjhsih sdhsidh vh gyfty rdr rcn oshdw; dcksjhfjkhf sfhwuwb shfwkdjsy jshdsuhdis sdsidks jhdisdhihbsdhsd jshduwsyeuiw'),
              ),
              Padding(
                padding: const EdgeInsets.only(top:15.0,bottom: 12),
                child: Text('Items Categories',style: kHeadline3TextStyle,),
              ),
              Row( children: [
               Categories(
                 text: "SpreadSheet",
               ),
               Categories(
                 text: "Woman",
               ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top:20.0,bottom: 8),
                child: Text('Available Mini Service',style:kSubtitle1TextStyle),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    AvailableServices(text: 'Marvellous Ironing', text1: '#220'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AvailableServices(text: 'Fantaby Folding', text1: '#220'),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
