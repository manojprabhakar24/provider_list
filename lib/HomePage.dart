



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model/item_doc.dart';






class Home extends StatefulWidget{
  @override
  State<Home> createState()=>_Home ();

}

class _Home extends State<Home> {
  final mycontroller = TextEditingController();
  String mydisplay = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(hintText: 'Add Item',
                    hintStyle: TextStyle(color: Colors.red, fontSize: 15),
                    labelText: "Enter Your List",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    )

                ),


                controller: mycontroller,
              ),

            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  mydisplay = mycontroller.text;
                });
              Provider.of<ItemData>(context,listen:false);
              },
              child: Text('submit'),
            ),

          ],
        )
    );
  }


}
