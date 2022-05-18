import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/about_service.dart';
import 'package:mobile_dev_community_challenge/ui/style/texts.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/widgets.dart';
class NewService extends StatelessWidget {
  const NewService({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
             
              Container(
                height: 350,
                width: 500,
                child: Image.asset('assets/images/ssss.png',fit: BoxFit.fill,)),
    
              Padding(
                padding: const EdgeInsets.only(left:8.0,right: 30,top: 20,bottom: 2),
                child: Text('New Service Added',style: kHeadline2TextStyle,),
              ),
               Padding(
                 padding: const EdgeInsets.only(left:8.0,right: 30,top: 4,bottom: 15),
                 child: Text('Successfully',style: kHeadline2TextStyle,),
               ),
               Padding(
                 padding: const EdgeInsets.only(right:20.0,left: 20,top: 10,bottom: 30),
                 child: Text('AD doekr kmdk ls oe odmek lclsdkkjjeiwjhdiojdjhjh hdohiw fioejfioejfo kijrg kje  iejig ouptor oetrn iuero preprkp euryeui hdruiwerijhkehfkehfk jen jerhe rhierhfif ehfiehfiebneelefjh jdfhejh'),
               ),
            
    
               Padding(
                 padding: const EdgeInsets.only(bottom:8.0,top: 180),
                 child: BaseButton(onPress: (){},text: 'VIEW SERVICE',
                 bgColor: Colors.green,),
               ),
                Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: BaseButton(onPress: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutService()));
                 },text: 'ADD ANOTHER SERVICE',
                 textStyle: TextStyle(color: Colors.green),
                 bgColor: Colors.blue.shade50,
                 borderColor: Colors.green,
                ),
               ),
    
    
            ],
          )),
        
      ),
    );
  }
}