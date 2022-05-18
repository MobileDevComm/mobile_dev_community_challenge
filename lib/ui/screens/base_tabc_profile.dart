import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/screens/order_details.dart';
import 'package:mobile_dev_community_challenge/ui/screens/profile.dart';
import 'package:stacked/stacked.dart';

import '../../core/models/view_modal.dart';
class BaseControl extends StatefulWidget {
  const BaseControl({ Key? key }) : super(key: key);

  @override
  State<BaseControl> createState() => _BaseControlState();
}

class _BaseControlState extends State<BaseControl> {
  

  @override
  Widget build(BuildContext context) {

   
    return ViewModelBuilder<MainScreenViewModel>.reactive(
        viewModelBuilder: () => MainScreenViewModel(),
        builder: (context, model, _) {
           return SafeArea(
             child: Scaffold(
                body: getCurrentPage(model.currentIndex),
                bottomNavigationBar: BottomNavigationBar(
                  showSelectedLabels: true,
                  showUnselectedLabels: true,
                  currentIndex: model.currentIndex,
                  selectedIconTheme: IconThemeData(color: Colors.blue),
                  unselectedIconTheme: IconThemeData(color: Colors.grey),
                  selectedItemColor: Colors.black,
                  unselectedItemColor: Colors.grey,
                  onTap: model.setIndex,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_balance_wallet_outlined),
                        label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.check_box_outline_blank_sharp), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: ""),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.star), label: ""),
                  ],
                ),
              ),
           );
          });
        }
  }

  Widget getCurrentPage(int currentIndex) {
    switch (currentIndex) {
      case 1:
        return Profile();
      // case 2:
      //   return HistoryScreen();
       case 3:
        return OrderDetails();
      // case 4:
      //   return Container();
      default:
        return const Profile();
    }
  }



    //  DottedBorder(
    //                               strokeWidth: 2,
    //                               dashPattern: const [10],
    //                               child: UploadButton(
    //                                 onPressed: () {},
    //                               ),
    //                             ),