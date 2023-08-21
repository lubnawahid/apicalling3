import 'package:apicalling3/screen/screen2.dart';
import 'package:flutter/material.dart';

import '../model/models.dart';
import '../service/apiservice.dart';

class Screen1 extends StatefulWidget {
const Screen1({Key? key}) : super(key: key);

@override
State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
final nameController = TextEditingController();
final ageController = TextEditingController();
final addressController = TextEditingController();
final placeController = TextEditingController();
@override
Widget build(BuildContext context) {
return Scaffold(
body: Padding(
padding: EdgeInsets.symmetric(horizontal: 30),
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
TextFormField(

  controller: nameController,
  decoration: InputDecoration(
    hintText: 'Enter your Name',
    labelText:'Enter Your Name' ,
    border: OutlineInputBorder(

      borderRadius: BorderRadius.circular(20),
    ),
),
),
  Padding(
    padding: const EdgeInsets.all(8),
 child: TextFormField(

    controller: ageController,
    decoration: InputDecoration(
      hintText: 'Enter your Age',
      labelText:'Enter Your age' ,
      border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),
  ),
  Padding(
  padding: const EdgeInsets.all(8),
 child: TextFormField(

    controller: addressController,
    decoration: InputDecoration(
      hintText: 'Enter your Address',
      labelText:'Enter Your Address' ,
      border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),
  ),
  Padding(
    padding: const EdgeInsets.all(8),
  child:TextFormField(

    controller: placeController,
    decoration: InputDecoration(
      hintText: 'Enter your Place',
      labelText:'Enter Your Place' ,
      border: OutlineInputBorder(

        borderRadius: BorderRadius.circular(20),
      ),
    ),
  ),
  ),
ElevatedButton(
onPressed: () {
  Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => Screen2(





name: nameController.text,age:int.parse(ageController.text),address: addressController.text,place: placeController.text))
  );


},

child: Text('Add')),
],
),
),
);
}
}