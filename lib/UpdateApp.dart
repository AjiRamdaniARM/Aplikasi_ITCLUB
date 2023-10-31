import 'package:app_it/add_helper.dart';
import 'package:app_it/api/widget_helper.dart';
import 'package:app_it/responsive/mobile/homeresponsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

List barData = [
  Bar1(),
  Bar2(),
  Bar3(),
];

class UpdateApp extends StatefulWidget {
  @override
  State<UpdateApp> createState() => _UpdateApp();

}

class _UpdateApp extends State<UpdateApp> {
 
@override 
Widget build(BuildContext context) {
  
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 237, 250, 255),
    body: Center(
      child: 
      Stack (children: [
         Container(
          width: MediaQuery.of(context).size.width,
          height: 210,
          decoration: BoxDecoration(
            boxShadow: [
      BoxShadow(
        color: Colors.black12,
        spreadRadius: 1,
        blurRadius: 3,
      ),
    ],
            color: Colors.white
          ),
        ),   
        
      
  Column(
      children: [
              SizedBox(
      height: 210,
      child:
           PageView.builder(
                itemCount: 3,
                  scrollDirection: Axis.horizontal,
                pageSnapping: true,
                reverse: false,
                itemBuilder: (context, pagePosition) {
                  return
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.only(top: 20),
                            child: (barData[pagePosition])
                      );
                }), ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 23.20, top: 25),
          child: Stack(children: [
            Container(
    width: 100,
    height: 17,
    decoration: ShapeDecoration(
        gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFFFFD600), Color(0x00FFE500)],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
    ),
),
             Text(
            'Pilihan Menu',
            style: TextStyle(
              fontFamily: 'Poppins-Bold',
              letterSpacing:1,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromARGB(255, 41, 40, 40)
            ),
          ), 
          ],)
          
         
        ),
   Container(
    alignment: Alignment.topCenter,
    margin: EdgeInsets.only(left: 20, top: 10),
                  child: MenuLain(),
                ) 
             
      ],
    )
      ,
      ],)
     
    )
   
  
    );
  
}
}

class Bar1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        margin: EdgeInsets.all(10),
         width: 350,
          height: 150,
          
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [Color(0xFF16E3FF), Color(0xFF00C1FF)],
),

        ),
      child: FittedBox(child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1 ,
            child:
            Column(
              children: [
                 Image(
                image: AssetImage('assets/image/logo2.webp'),
                ),

              ],
            )
            
          ),
          Container(
            margin: EdgeInsets.only(right: 100),
            child: Column(
              children: [
                Text(
                  'SELAMAT DATANG', style: TextStyle(
                    fontSize: 40,
                    color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
                Text('IT LOVERS',style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Valken', letterSpacing: 2),),
                Text('SMKS TERPADU IBAADURRAHMAN', style: TextStyle(color: Colors.white, fontSize: 26),),
               Container(
                margin: EdgeInsets.only(top: 20),
                width: 400,
                height: 70,
                child: 
               ElevatedButton(
                  onPressed: (() => {}),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                
                ),
              ),
                   child: Text('INSTAGRAM', style: TextStyle(
                    fontSize: 40, color: Colors.black, fontWeight: FontWeight.normal
                   ),)),
               ) 
                
              ],
            ),
          )
        ],
      ),),
      
      )
      ],
    );
  }
}

class Bar2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        margin: EdgeInsets.all(10),
         width: 350,
          height: 150,
          
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [Color.fromARGB(255, 255, 45, 22), Color.fromARGB(255, 178, 31, 21)],
),
        ),
      child: FittedBox(child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1 ,
            child: Image(
                image: AssetImage('assets/image/logo.png'),
                ),
          ),
          Container(
            margin: EdgeInsets.only(right: 100),
            child: Column(
              children: [
                Text(
                  'SELAMAT DATANG', style: TextStyle(
                    fontSize: 40,
                    color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
                Text('IT LOVERS',style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Valken', letterSpacing: 2),),
                Text('SMKS PARAWISATA PERCIK MADANI', style: TextStyle(color: Colors.white, fontSize: 26),),
               Container(
                margin: EdgeInsets.only(top: 20),
                width: 400,
                height: 70,
                child: 
               ElevatedButton(
                  onPressed: (() => {}),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                
                ),
              ),
                   child: Text('INSTAGRAM', style: TextStyle(
                    fontSize: 40, color: Colors.black, fontWeight: FontWeight.normal
                   ),)),
               ) 
                
              ],
            ),
          )
        ],
      ),),
      
      )
      ],
    );
  }
}

class Bar3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
        margin: EdgeInsets.all(10),
         width: 350,
          height: 150,
          
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
      begin: Alignment(0.00, -1.00),
      end: Alignment(0, 1),
      colors: [Color.fromARGB(255, 208, 0, 142), Color.fromARGB(255, 231, 0, 165)],
),
        ),
      child: FittedBox(child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1 ,
            child: Image(
                image: AssetImage('assets/image/logo3.png'),
                ),
          ),
          Container(
            margin: EdgeInsets.only(right: 100),
            child: Column(
              children: [
                Text(
                  'SELAMAT DATANG', style: TextStyle(
                    fontSize: 40,
                    color: Colors.white, fontWeight: FontWeight.bold
                  ),
                ),
                Text('IT LOVERS',style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: Colors.white, fontFamily: 'Valken', letterSpacing: 2),),
                Text('SMKS KESEHATAN TUNAS MADANI', style: TextStyle(color: Colors.white, fontSize: 26),),
               Container(
                margin: EdgeInsets.only(top: 20),
                width: 400,
                height: 70,
                child: 
               ElevatedButton(
                  onPressed: (() => {}),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                
                ),
              ),
                   child: Text('INSTAGRAM', style: TextStyle(
                    fontSize: 40, color: Colors.black, fontWeight: FontWeight.normal
                   ),)),
               ) 
                
              ],
            ),
          )
        ],
      ),),
      
      )
      ],
    );
  }
}

// Menu Lain
int catIndex = 0;
class MenuLain extends StatefulWidget {
   MenuLain({Key? key}) : super(key: key);

  @override
  _MenuLain createState() => _MenuLain();
}

class _MenuLain extends State<MenuLain>{
  List<String> items = [
    "All Devisi",
    "Berita/Artikel",
    "Web Api",
    "Youtube Video"
  ];
  
  @override
  Widget build(BuildContext context) {
       return 
       Scaffold(
        body: 
        Container(
          child: Text("Hello World"),
        )
        ,
       );
  }
}