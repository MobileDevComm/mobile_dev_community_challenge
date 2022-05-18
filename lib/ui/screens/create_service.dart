import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/suit_bladzer.dart';
import 'package:mobile_dev_community_challenge/ui/screens/upload.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/widgets.dart';

import '../style/texts.dart';
import '../widgets/buttons/Amount_createservice.dart';
import '../widgets/buttons/categories.dart';
import '../widgets/buttons/switch_blazer.dart';
import '../widgets/buttons/tabButtons.dart';

class CreateService extends StatelessWidget {
  const CreateService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                          MaterialPageRoute(builder: (context) => Upload()));},
                icon: Icon(Icons.arrow_back),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              'Create Service',
              style: kHeadline6TextStyle,
            ),
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16.0, top: 25, bottom: 6, right: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Create Service',
                    style: kHeadline1TextStyle,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Service Name',
                    style: kHeadline4TextStyle,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SuitAndBlazer(),
                  SizedBox(
                    height: 38,
                  ),
                  Text(
                    'Short Description',
                    style: kHeadline4TextStyle,
                  ),

                  Card(
                    child: TextField(
                      maxLines: 9,
                     
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Include all needed Information',hintStyle: kHeadline4TextStyle),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Amount (In Naira)'),
                  ),
                  Amount(),
                  SizedBox(
                    height: 38,
                  ),
                  Text(
                    'Select Category',
                    style: kHeadline4TextStyle,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border:
                            Border.all(color: Colors.grey.shade200, width: 1)),
                    child: Padding(
                      padding: const EdgeInsets.only(top:8.0,right: 3,bottom: 8,left: 7),
                      child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Categories(
                              text: 'BedSpreads',
                            ),
                             Categories(
                              text: 'Women',
                            ),
                        
                          ],
                        ),
                        
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down_sharp))
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   Padding(
                    padding: const EdgeInsets.only(left: 10.0,bottom: 10 ),
                    child: Text('Add Product Image', style: kHeadline4TextStyle,),
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('assets/images/reww.jpg',fit: BoxFit.fill,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 270.0, bottom: 130),
                    child: TextButton(
                      onPressed: (){},
                      child: Text('Delete Image',style: kSubtitle2TextStyle,)),
                  ),
                
                  BaseButton(
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuitBlazer()));
                    },
                    text: 'CONTINUE',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





