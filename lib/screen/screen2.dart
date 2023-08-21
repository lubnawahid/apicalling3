import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/models.dart';
import '../service/apiservice.dart';

class Screen2 extends StatelessWidget {
  final String name;
  final int age;
  final String place;
  final String address;


  Screen2({
    required this.name,
    required this.age,
    required this.place,
    required this.address,

  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: $name'),
            Text('Age: $age'),
            Text('Place: $place'),
            Text('Address: $address'),

            SizedBox(height: 100,),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // deleteData(userId);
                  },
                  child: Text('Delete'),
                ),

                SizedBox(width: 130,),
                ElevatedButton(
                  onPressed: () {
                    updatedata(
                      user: User(
                        name: name, // Update with new data
                        age: age,

                        address: address,
                        place: place,

                      ),
                    );
                  },
                  child: Text('Update'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}