import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(image: AssetImage('assets/fondo.jpg')),
        Title(),
        Botones(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Text('Commodo do officia consequat consectetur pariatur et. Dolor sint aute proident labore eiusmod do. Non deserunt irure ipsum qui laboris ut fugiat sunt pariatur reprehenderit. Fugiat in consectetur amet nulla in ipsum mollit amet elit voluptate eu magna.'))
      ],
    ));
  }
}

class Botones extends StatelessWidget {
  const Botones({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 60,vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ColumIconText(icono:Icons.call,texto:'CALL'),
          ColumIconText(icono:Icons.schedule_send_sharp,texto:'ROUTE'),
          ColumIconText(icono:Icons.share,texto:'SHARE'),
          
        ],
      ),
    );
  }
}

class ColumIconText extends StatelessWidget {
  final IconData icono;
  final String texto;
  const ColumIconText({
    Key? key, 
     required this.icono, 
     required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icono, color: Colors.blue),
        SizedBox(
          height: 5,
        ),
        Text(
          texto,
          style:
              TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41')
        ],
      ),
    );
  }
}
