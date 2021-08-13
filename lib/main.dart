import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'MyDrawer.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CoHelp',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Widget CustomCard(int routeNumber,String title,String subtitle,String imageUrl){
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 10.0,
      margin: new EdgeInsets.symmetric(horizontal: 10.0,vertical: 6.0),
      child: ListTile(
        onTap: (){

        },

        contentPadding: new EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
        leading: Container(
          padding: EdgeInsets.only(right: 12.0),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(color: Colors.white24,width: 1.0)
            ),

          ),
          child: CircleAvatar(
            radius: 25.0,
            backgroundColor: Colors.white,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Colors.white),
        ),
        trailing: Icon(Icons.keyboard_arrow_right_sharp,color: Colors.white,size: 30.0,),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 6.0,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50.0),
            bottomRight: Radius.circular(50.0),
          )
        ),
        title: Row(
          children: [
            Text(
              "Co",
              style: TextStyle(
                fontSize: 25.0
              ),
            ),
            Text(
                "Help",
              style: TextStyle(
                color: Colors.blue,
                  fontSize: 25.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
      ),
      drawer: MyDrawerPage(),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 10.0,),
            CustomCard(1,"Register Patient","Click to register patient","https://cdn.expresshealthcare.in/wp-content/uploads/2020/07/16075955/blood-plasma-750x400.jpg"),
            CustomCard(2,"Register Donor","Click to register Donor","https://cdn.expresshealthcare.in/wp-content/uploads/2020/07/16075955/blood-plasma-750x400.jpg"),
            CustomCard(3,"Patient List","Click to view patient list","https://cdn.expresshealthcare.in/wp-content/uploads/2020/07/16075955/blood-plasma-750x400.jpg"),
            CustomCard(4,"Donor List","Click to view donor list","https://cdn.expresshealthcare.in/wp-content/uploads/2020/07/16075955/blood-plasma-750x400.jpg"),
          ],
        ),
      ),
    );
  }
}

