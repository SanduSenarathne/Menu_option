import 'package:flutter/material.dart';

class Option {
  Icon icon;
  String title;
  String subtitle;

  Option({required this.icon, required this.title, required this.subtitle});
}

final options = [
  Option(
    icon: Icon(Icons.account_circle, size: 40.0),
    title: 'Account',
    subtitle: 'sub title of the option.',
  ),
  Option(
    icon: Icon(Icons.lock_rounded, size: 40.0),
    title: 'Privacy',
    subtitle: 'sub title of the option.',
  ),
  Option(
    icon: Icon(Icons.shield_rounded, size: 40.0),
    title: 'Security',
    subtitle: 'sub title of the option.',
  ),
  Option(
    icon: Icon(Icons.notifications, size: 40.0),
    title: 'Notifications',
    subtitle: 'sub title of the option.',
  ),
  Option(
    icon: Icon(Icons.logout, size: 40.0),
    title: 'Log Out',
    subtitle: 'sub title of the option.',
  ),
  /*Option(
    icon: Icon(Icons., size: 40.0),
    title: 'Option Six',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(Icons., size: 40.0),
    title: 'Option Seven',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),
  Option(
    icon: Icon(Icons., size: 40.0),
    title: 'Option Eight',
    subtitle: 'Lorem ipsum dolor sit amet, consect.',
  ),*/
];
