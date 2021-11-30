import 'package:dog_profile_ui/src/configs/appColors.dart';
import 'package:dog_profile_ui/src/widgets/kText.dart';
import 'package:flutter/material.dart';

class DogProfilePage extends StatelessWidget {
  final List<String> profileData = [
    'Name:',
    'Breed:',
    'Age:',
    'Wight:',
    'Good With Children:',
    'Good With other dogs:',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: KText(
          text: 'Dog Profile',
          fontSize: 20,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 19),
            child: Container(
              height: 20,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.50,
                  color: Colors.black,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Center(
                  child: KText(
                    text: 'save',
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey.shade400,
                  child: Icon(
                    Icons.person,
                    size: 60,
                    color: black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                scrollDirection: Axis.vertical,
                itemCount: profileData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 3),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      height: 45,
                      color: primaryColor,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: KText(
                          text: profileData[index],
                          fontSize: 16,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 50),
              Container(
                alignment: Alignment.centerLeft,
                height: 45,
                color: primaryColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(
                        text: 'Feedback from PawFriends',
                        fontSize: 16,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: backgroundColor,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: black,
                          size: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 6),
              Container(
                alignment: Alignment.centerLeft,
                height: 45,
                color: primaryColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      KText(
                        text: 'Add Another dog profile',
                        fontSize: 16,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: backgroundColor,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: black,
                          size: 13,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
