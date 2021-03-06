import 'package:flutter/material.dart';
import 'BillsList.dart';
import 'BuildingManagemnet/ListOfBuildings.dart';
import 'Notifications.dart';
import 'userAccount.dart';

class NavigationScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(101, 127, 172, 1),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10,100,10,10),
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return BuildingsList();
                    },
                  ));
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(120)),
                        color: Colors.white,
                      ),
                      child:new Image.asset('images/skyline.png', width: 60.0, height: 60.0),
                    ),
                    Padding(padding: EdgeInsets.all(5),),
                    Text("البنايات",style: TextStyle(fontSize: 20,color: Colors.white),)

                  ],
                ),
              ),
              // Manage user account button
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return new UserAccount();
                    },
                  ));
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(120)),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.perm_identity,size: 60,),
                    ),
                    Padding(padding: EdgeInsets.all(5),),
                    Text("الحساب",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.right,)

                  ],
                ),
              )

            ],
          ),
          Padding(padding: EdgeInsets.all(20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return new BillsList();
                    },
                  ));
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(120)),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.monetization_on,size: 60,),
                    ),
                    Padding(padding: EdgeInsets.all(5),),
                    Text("الفواتير",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.right,)

                  ],
                ),
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) {
                      return new Notifications();
                    },
                  ));
                },
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.all(Radius.circular(120)),
                        color: Colors.white,
                      ),
                      child: Icon(Icons.notifications,size: 60,),
                    ),
                    Padding(padding: EdgeInsets.all(5),),
                    Text("الإشعارات",style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.right,)
                  ],
                ),
              )
            ],
          ),
        ],
      )


    );
  }
}