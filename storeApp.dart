import 'package:flutter/material.dart';
import 'package:store_app_ui/product_screen.dart';

class storeApp extends StatelessWidget {

  double width=100,height=120,fontSize=16;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border:Border(top: BorderSide(color: Colors.black, width: 1.0))
        ),
        child: BottomNavigationBar(

          selectedItemColor: Colors.black,
          backgroundColor: Colors.white,



          items: [
            BottomNavigationBarItem(icon: InkWell(
                onTap:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>productScreen()));
            },child: Icon(Icons.explore)),label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff2A4B7C),
        elevation: 0,
        leading:Icon(Icons.menu_sharp,color: Colors.white,),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(Icons.shopping_cart),
          )
        ],

      ),
      backgroundColor: Color(0xff2A4B7C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 4,),
            Padding(
              padding: const EdgeInsets.only(right: 260,bottom: 10),
              child: Text('Categories',style: TextStyle(
                fontSize: 26,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),),
            ),
            Container(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          height: height,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              alignment: AlignmentDirectional.center,
                              image: AssetImage('images/smart.png')
                            ),
                              color: Colors.white
                          ),

                        ),
                        SizedBox(height: 9,),
                        Text('SmartWatch',style: TextStyle(
                          fontSize: fontSize,
                          color: Colors.white
                        ),)
                      ],
                    )
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                      child: Column(
                        children: [
                          Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    image: AssetImage('images/airpod.png')
                                ),
                                color: Colors.white
                            ),

                          ),
                          SizedBox(height: 9,),
                          Text('AirPods',style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white
                          ),)
                        ],
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                      child: Column(
                        children: [
                          Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    image: AssetImage('images/phone.png')
                                ),
                                color: Colors.white
                            ),

                          ),
                          SizedBox(height: 9,),
                          Text('Cell Phone',style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white
                          ),)
                        ],
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                      child: Column(
                        children: [
                          Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    image: AssetImage('images/headset.png')
                                ),
                                color: Colors.white
                            ),

                          ),
                          SizedBox(height: 9,),
                          Text('Headset',style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white
                          ),)
                        ],
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                      child: Column(
                        children: [
                          Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    image: AssetImage('images/shirt.png')
                                ),
                                color: Colors.white
                            ),

                          ),
                          SizedBox(height: 9,),
                          Text('T-Shirt',style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white
                          ),)
                        ],
                      )
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 4),
                      child: Column(
                        children: [
                          Container(
                            width: width,
                            height: height,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    alignment: AlignmentDirectional.center,
                                    image: AssetImage('images/jeans.png')
                                ),
                                color: Colors.white
                            ),

                          ),
                          SizedBox(height: 9,),
                          Text('Jeans',style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.white
                          ),)
                        ],
                      )
                  ),


                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: TextField(

                decoration: InputDecoration(

                  filled: true,
                  fillColor: Colors.white,
                  hintText:'Search For an Item',
                  suffixIcon: Icon(Icons.camera_alt),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)

                  )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/1,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(25),
                  topRight: Radius.circular(25)
                )
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Best Selling',style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,

                        ),),
                        SizedBox(width: 130,),
                        Text('See all',style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff2A4B7C),

                          fontWeight: FontWeight.w700,

                        ),)
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 55,left: 14),
                            child: Column(
                              children: [
                                Container(
                                  width: 200,
                                  height: 220,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border(
                                        top: BorderSide(color: Colors.grey,width: 1.2),
                                        bottom: BorderSide(color: Colors.grey,width: 1.2),
                                        left: BorderSide(color: Colors.grey,width:1.2),
                                        right: BorderSide(color: Colors.grey,width: 1.2),
                                      ),
                                      color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Image.asset('images/smartwatch.png',),
                                  ),

                                ),
                                SizedBox(height: 9,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Fitbit Versa 2',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),),
                                      Text('Smart Watch',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.teal
                                      ),),
                                      Text('\$120',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2A4B7C)
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 55,left: 14),
                            child: Column(
                              children: [
                                Container(
                                  width: 200,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border(
                                      top: BorderSide(color: Colors.grey,width: 1.2),
                                      bottom: BorderSide(color: Colors.grey,width: 1.2),
                                      left: BorderSide(color: Colors.grey,width:1.2),
                                      right: BorderSide(color: Colors.grey,width: 1.2),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Image.network('https://i.pinimg.com/564x/72/1a/4f/721a4f0f29624ebddd321cc86110fcce.jpg',),
                                  ),

                                ),
                                SizedBox(height: 9,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Nike Sneakers',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),),
                                      Text('Men Shoes',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.teal
                                      ),),
                                      Text('\$89',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2A4B7C)
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            )
                        ),
                        Padding(
                            padding: const EdgeInsets.only(top: 55,left: 14),
                            child: Column(
                              children: [
                                Container(
                                  width: 200,
                                  height: 220,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border(
                                      top: BorderSide(color: Colors.grey,width: 1.2),
                                      bottom: BorderSide(color: Colors.grey,width: 1.2),
                                      left: BorderSide(color: Colors.grey,width:1.2),
                                      right: BorderSide(color: Colors.grey,width: 1.2),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Image.network('https://i.pinimg.com/originals/b9/7a/1a/b97a1ae788984fde44c349bb9e70669d.jpg',),
                                  ),

                                ),
                                SizedBox(height: 9,),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Beats Headset',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black
                                      ),),
                                      Text('Headset',style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.teal
                                      ),),
                                      Text('\$410',style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Color(0xff2A4B7C)
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 400),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Just For You',style: TextStyle(
                          fontSize: 28,

                          fontWeight: FontWeight.w700,

                        ),),
                        SizedBox(width: 130,),
                        Text('See all',style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff2A4B7C),
                          fontWeight: FontWeight.w700
                          ,

                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 390),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 55,left: 14),
                              child: Column(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border(
                                        top: BorderSide(color: Colors.grey,width: 1.2),
                                        bottom: BorderSide(color: Colors.grey,width: 1.2),
                                        left: BorderSide(color: Colors.grey,width:1.2),
                                        right: BorderSide(color: Colors.grey,width: 1.2),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Image.network('https://i.pinimg.com/564x/a1/bc/31/a1bc3154e34c02ae88ce11c83a13e883.jpg',),
                                    ),

                                  ),
                                  SizedBox(height: 9,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('CHRONOS CH04',style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
                                        ),),
                                        Text('Men Watch',style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.teal
                                        ),),
                                        Row(
                                          children: [
                                            Text('\$620',style: TextStyle(
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.red
                                            ),),
                                            SizedBox(width: 5,),
                                            Text('\$499',style: TextStyle(

                                                fontSize: 25,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.green
                                            ),),

                                          ],
                                        )


                                      ],
                                    ),
                                  )

                                ],
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 55,left: 14),
                              child: Column(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border(
                                        top: BorderSide(color: Colors.grey,width: 1.2),
                                        bottom: BorderSide(color: Colors.grey,width: 1.2),
                                        left: BorderSide(color: Colors.grey,width:1.2),
                                        right: BorderSide(color: Colors.grey,width: 1.2),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Image.network('https://i.pinimg.com/564x/f7/62/71/f762718ab0bcdc39561c41ccfe15c5d3.jpg',),
                                    ),

                                  ),
                                  SizedBox(height: 9,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('AirPods Pro',style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
                                        ),),
                                        Text('AirPod',style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.teal
                                        ),),
                                        Row(
                                          children: [
                                            Text('\$200',style: TextStyle(
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.red
                                            ),),
                                            SizedBox(width: 5,),
                                            Text('\$103',style: TextStyle(

                                                fontSize: 25,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.green
                                            ),),

                                          ],
                                        )


                                      ],
                                    ),
                                  )

                                ],
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 55,left: 14),
                              child: Column(
                                children: [
                                  Container(
                                    width: 200,
                                    height: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border(
                                        top: BorderSide(color: Colors.grey,width: 1.2),
                                        bottom: BorderSide(color: Colors.grey,width: 1.2),
                                        left: BorderSide(color: Colors.grey,width:1.2),
                                        right: BorderSide(color: Colors.grey,width: 1.2),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Image.network('https://i.pinimg.com/564x/c3/ab/11/c3ab11a95253e2d12aa0ef0615240e49.jpg',),
                                    ),

                                  ),
                                  SizedBox(height: 9,),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 50),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Leather Boots',style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black
                                        ),),
                                        Text('Men Shoes',style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.teal
                                        ),),
                                        Row(
                                          children: [
                                            Text('\$89',style: TextStyle(
                                                decoration: TextDecoration.lineThrough,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.red
                                            ),),
                                            SizedBox(width: 5,),
                                            Text('\$50',style: TextStyle(

                                                fontSize: 25,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.green
                                            ),),

                                          ],
                                        )


                                      ],
                                    ),
                                  )

                                ],
                              )
                          ),

                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
