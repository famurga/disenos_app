import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SigleCard(
            icon: Icons.border_all,
            color: Colors.blue,
            text: 'General',
          ),
          _SigleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'Transporte',
          ),
        ]),
        TableRow(children: [
          _SigleCard(
            icon: Icons.shop,
            color: Colors.purple,
            text: 'Shop',
          ),
          _SigleCard(
            icon: Icons.cloud,
            color: Colors.purpleAccent,
            text: 'Bill',
          ),
        ]),
        TableRow(children: [
          GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'basic_design'),
              child: _SigleCard(
                icon: Icons.access_alarm_outlined,
                color: Colors.deepPurple,
                text: 'Alarma',
              )),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, 'scroll_screen'),
              child: _SigleCard(
            icon: Icons.car_rental,
            color: Colors.pinkAccent,
            text: 'Transporte',
          )),
        ]),
      ],
    );
  }
}

class _SigleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;
  const _SigleCard(
      {Key? key, required this.icon, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          child: Icon(
            icon,
            size: 35,
            color: Colors.white,
          ),
          radius: 30,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(color: this.color, fontSize: 18),
        )
      ],
    );
    return _CardBackground(child: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20),
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
