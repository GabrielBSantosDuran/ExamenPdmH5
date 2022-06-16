import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
 _DashboardState createState()=> _DashboardState();
  }
class _DashboardState extends State<Dashboard>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget> [
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/imagenes/top_header.png')
              )
            ),
          ),

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
              children:<Widget>[
                Container(
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 32,
                        backgroundImage: NetworkImage('https://icon-library.com/icon/admin-user-icon-4.html'),
                      ),
                      SizedBox(width: 16,),
                      Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Administrador'),
                          Text('Gabriel Santos'),
                        ],
                      ),
                    ],
                  ),
                ),
                GridView.count(
                  mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  primary: false,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            children: [
                              
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
          ),
            )
          ),
        ],

      ),
    );
  }

}