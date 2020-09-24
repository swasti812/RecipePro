import 'package:flutter/material.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
        Column(
          children: [
            Container(
              height: 120,
              width:double.infinity,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child:(Text('CHEF IN THE MAKING',
                  style: TextStyle(
              fontWeight:FontWeight.w500,

              )))
            ),
            SizedBox(height: 20,),
            ListTile(leading: Icon(Icons.restaurant, size:26) ,
            )

          ],
        )
    );
  }
}
