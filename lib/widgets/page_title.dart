import 'package:flutter/material.dart';

class PageTile extends StatelessWidget {
  const PageTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column( 
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Classify transaction',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 15,),
            Text('Classify this transaction into a particular category',style: TextStyle(fontSize: 16, color: Colors.white),),
          ],
        ),
      ),
    );
  }
}