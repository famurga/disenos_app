import 'package:disenos_app/widgets/background.dart';
import 'package:disenos_app/widgets/card_table.dart';
import 'package:disenos_app/widgets/custom_bottom_navigation.dart';
import 'package:disenos_app/widgets/page_title.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          BackGround(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottonNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(  
      child: Column(
        children: [
          PageTile(),

          //Card table

          CardTable(),
        ],
      ),
    );
  }
}