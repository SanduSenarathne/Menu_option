import 'package:flutter/material.dart';
import 'package:menu_option/models/option_model.dart';

import 'option_screens/account.dart';
import 'option_screens/notification.dart';
import 'option_screens/privacy.dart';
import 'option_screens/security.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Menu Options'),
        leading: TextButton(
          // Change this line
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: options.length + 2,
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
            return SizedBox(height: 15.0);
          } else if (index == options.length + 1) {
            return SizedBox(height: 100.0);
          }
          return GestureDetector(
            onTap: () {
              _navigateToOption(context, index - 1);
            },
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.all(10.0),
              width: double.infinity,
              height: 80.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: _selectedOption == index - 1
                    ? Border.all(color: Colors.black26)
                    : null,
              ),
              child: ListTile(
                leading: options[index - 1].icon,
                title: Text(
                  options[index - 1].title,
                  style: TextStyle(
                    color: _selectedOption == index - 1
                        ? Colors.black
                        : Colors.grey[600],
                  ),
                ),
                subtitle: Text(
                  options[index - 1].subtitle,
                  style: TextStyle(
                    color: _selectedOption == index - 1
                        ? Colors.black
                        : Colors.grey,
                  ),
                ),
                selected: _selectedOption == index - 1,
              ),
            ),
          );
        },
      ),
    );
  }

  void _navigateToOption(BuildContext context, int optionIndex) {
    print("Navigating to option $optionIndex");
    setState(() {
      _selectedOption = optionIndex;
    });

    // Use Navigator to push to the selected screen
    switch (optionIndex) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AccountPage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => PrivacyPage()));
        break;
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SecurityPage()));
        break;
      case 3:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => NotificationPage()));
        break;
    }
  }
}
