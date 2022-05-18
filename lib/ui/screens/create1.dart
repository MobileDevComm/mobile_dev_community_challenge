import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/create_service.dart';
import 'package:mobile_dev_community_challenge/ui/screens/upload.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/widgets.dart';

import '../style/texts.dart';
import '../widgets/buttons/Amount_createservice.dart';
import '../widgets/buttons/select_id.dart';
import '../widgets/buttons/switch_blazer.dart';

class CreateScreen1 extends StatelessWidget {
  const CreateScreen1({Key? key}) : super(key: key);

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
                          MaterialPageRoute(builder: (context) => CreateService()));},
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
                   selectId(text: 'Select Category',),
                  
                          SizedBox(
                height: 20,
              ),
              DottedBorder(
                color: Colors.black38,
                strokeWidth: 2,
                dashPattern: const [7],
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 200,
                    width: 350,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Click to browse or'),
                        Text('Drag and drop cover photo '),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: BaseButton(onPress: (){ Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateService()));
                },
                text: 'CONTINUE',),
              )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
