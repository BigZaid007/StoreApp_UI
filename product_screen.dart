import 'package:flutter/material.dart';
import 'package:store_app_ui/storeApp.dart';

class productScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff2A4B7C),
        leading: IconButton(
          onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>storeApp()));
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.favorite_border),
          ),
        ],
      ),
      backgroundColor: Color(0xff2A4B7C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 150),
                  child: Container(
                    width: 600,
                    height: 600,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Image(image: AssetImage('images/smartwatch.png'),height: 300,width: 300,),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 310,horizontal: 20),
                  child: Text('Fitbit Versa 2 Health and Fitness Smartwatch',style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontSize: 24
                  ),),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 380,horizontal: 30),
                  child: Text( 'Heart Rate, Music, Alexa Built-In, Sleep and Swim Tracking, Black/Carbon, One Size (S and L Bands Included)',style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                      fontSize: 17
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 590,horizontal: 20),
                  child:
                  Row(
                    children: [

                      Text( 'Qty',style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 24
                      ),),
                      SizedBox(width: 15,),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black45
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Icon(Icons.minimize),
                        ),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black45
                          ),
                        ),
                        child: Text('1',style: TextStyle(
                          fontWeight: FontWeight.w700,fontSize: 18
                        ),),
                      ),
                      Container(
                        alignment: AlignmentDirectional.center,
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black45
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Icon(Icons.add),
                        ),
                      ),
                      SizedBox(width: 120,),
                      Text( '\$120.0',style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 28
                      ),),


                    ],
                  )

                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 470,horizontal: 20),
                  child: Text( 'Select Color',style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      fontSize: 24
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 510,horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black
                          ),
                          child: Icon(Icons.check,color: Colors.white,),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.amber
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              shape: BoxShape.circle,
                              color: Colors.white
                          ),

                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 620),
                  child: Container(
                    width: 600,
                    height: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.transparent
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 648),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Container(
                        alignment: AlignmentDirectional.center,
                        width: MediaQuery.of(context).size.width,
                        height: 70,
                        decoration: BoxDecoration(

                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                            color: Colors.black
                        ),
                        child: Text('Add To Cart',style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          color: Colors.white
                        ),),
                      ),


                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),

    );
  }
}
