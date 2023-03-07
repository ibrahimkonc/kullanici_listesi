import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class KullaniciKart extends StatelessWidget {
  final String kullanici;

  const KullaniciKart({super.key, required this.kullanici});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Color(0xFF2F2C7F),
      child: Container(
        height: 120.0,
        color: Colors.white,
        margin: EdgeInsets.fromLTRB(1.0, 20.0, 1.0, 1.0),
        child: Center(
          child: Text(
            kullanici,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
