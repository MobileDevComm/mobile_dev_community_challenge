import 'package:flutter/material.dart';
import 'package:mobile_dev_community_challenge/ui/style/style.dart';
import 'package:mobile_dev_community_challenge/ui/widgets/buttons/base_button.dart';

import '../classes/document_container.dart';
import '../classes/document_container2.dart';
import '../classes/image_container.dart';

class DocumentUploads1 extends StatelessWidget {
  const DocumentUploads1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.scaffoldBgColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 70,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 49,
                      width: 74,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(149, 160, 252, 0.15),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Image(
                        image: AssetImage('assets/pngs/arrow_back.png'),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Text('Upload Documents', style: kHeaderTextStyle),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Upload Documents',
                  style: kMainHeaderTextStyle,
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Enter the OTP that was sent to you',
                    style: kHeader1TextStyle),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 206,
                      width: 159,
                      margin: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: const Color(0xffF6F7FF),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: const Color(0xff2FCF5F), width: 1),
                      ),
                      child: Stack(
                        children: [
                          const SizedBox(
                            height: 45.32,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 65),
                            child: ImageContainer(
                              display: AssetImage('assets/pngs/phone.png'),
                            ),
                          ),
                          const Padding(
                              padding: EdgeInsets.only(bottom: 90),
                              child: ImageContainer(
                                display:
                                    AssetImage('assets/pngs/phonehead.png'),
                              )),
                          const Padding(
                              padding: EdgeInsets.only(bottom: 65),
                              child: ImageContainer(
                                display:
                                    AssetImage('assets/pngs/phonezero.png'),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 45),
                            child: ImageContainer(
                              display: AssetImage('assets/pngs/phonebelly.png'),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              child: const Image(
                                image: AssetImage('assets/pngs/mark.png'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 37.31,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                  'Valid Identification\n              Card',
                                  style: kContainerTextStyle),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  const DocumentContainer(),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: DcocumentContainer2(),
              ),
              const SizedBox(
                height: 241,
              ),
              Center(
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: 'Every upload is subjected to ',
                        style: kHeader2TextStyle),
                    TextSpan(text: 'review', style: kRichTextStyle)
                  ]),
                ),
              ),
              const SizedBox(
                height: 11,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: BaseButton(
                  onPress: () {},
                  text: 'SAVE CHANGES',
                  textStyle: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
