import 'package:flutter/material.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({Key key, this.phone, this.email}) : super(key: key);

  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 30),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.phone_rounded,
                    color: Color.fromRGBO(31, 140, 202, 1),
                    size: 30,
                  ),
                  SelectableText(
                    phone,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(31, 140, 202, 1)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.transparent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Color.fromRGBO(31, 140, 202, 1),
                    size: 30,
                  ),
                  SelectableText(
                    email,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(31, 140, 202, 1)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
