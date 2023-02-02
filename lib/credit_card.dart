//- - - - - - - - - Instructions - - - - - - - - - - - - - - - - - -
//
// Default Widget call (instantiation):
//  - CreditCard(onTopRightButtonClicked: () {}, cardIcon: Image.network("https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/mastercard.png?alt=media&token=1ae51e14-5a60-4dbf-8a42-47cb9c3c1dfe",  width: 50,))
//
// Coming Soon:
//  - integration into a a card stack
//
//- - - - - - - - - - - - - - -  - - - - - - - - - - - - - - - - - -
import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final String balance;
  final String cardNumber;

  final Gradient backgroundGradient;
  //Should be an Image.network(...) or Image.asset(...) Widget

  const CreditCard({
    Key? key,
    this.balance = "\$2,850.00",
    this.cardNumber = "****  ****  ****  3799",
    this.backgroundGradient =
        const LinearGradient(colors: [Colors.blue, Colors.blueAccent]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: backgroundGradient,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.25),
            offset: const Offset(0, 15),
            blurRadius: 45,
          )
        ],
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Total Saldo",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[400]),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Rp6.000",
                    style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
