import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrot',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  const [
              Icon(Icons.menu),
              Text('MalBob Market'),
              Icon(Icons.people)
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ItemData(price: 600000),
              ItemData(price: 500000),
              ItemData(price: 850000),
              ItemData(price: 400000),
              ItemData(price: 930000),
              ItemData(price: 200000),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemData extends StatelessWidget {
  int price;
  ItemData({
    super.key,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const SizedBox(width: 5,),
        const Image(
          width: 100,
          height: 120,
          image: AssetImage('images/cutecat.jpg')
        ),
        const SizedBox(width: 20,),
        Flexible(
          flex:1,
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 5,),
            const Text('귀여운 고양이 분양합니다',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 2,),
            const Text('성남시 하대원동',
            style: TextStyle(color: Colors.black54, fontSize: 13),),
             const SizedBox(height: 2,),
            Text('$price원',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10)),
            const SizedBox(height: 32,),
            Row(          
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.favorite_border, color: Color.fromARGB(255, 243, 78, 78),),
                Text('97'),
                SizedBox(width: 20,)
              ],
            ),
          ],
        ),
        ),
      ],
    );
  }
}