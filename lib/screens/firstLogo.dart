import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:school/scrreen/navgation/Homepage/Homepage.dart';
// import 'package:school/scrreen/navgation/bottom_nav.dart';

class firstLogo extends StatefulWidget  {
  const firstLogo({super.key});

  @override
  State<firstLogo> createState() => _firstLogoState();
}

class _firstLogoState extends State<firstLogo> {
  @override
  bool pass = true;
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
        backgroundColor: Color(0xffF5F5F5),
      ),
      body: ListView(
        children: [
          SizedBox(height: 50,),
          Image.asset('images/logo2.png',width: 150,height: 150,),
          Center(
            child: Text('UFUQ SCHOOLS', style: TextStyle(
              fontSize: 16,

              fontWeight: FontWeight.bold,
              color: Color(0xff53A4B1),
            ),),
          ),
          Center(
            child: Text('  مدارس أفق الأبتدائية  ', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xff53A4B1),
            ),),
          ),



          SizedBox(height: 30,width: 50,),

          Padding(
            padding: const EdgeInsets.only(top: 100,right: 50,left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,

              children: [






                SizedBox(height: 5,),
                Align(alignment: Alignment.centerRight,

                  child:Text(
                    ''' البريد الالكتروني ''',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
                ,
                SizedBox(height: 10,),
              Container(
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0,2)
                    )
                  ]
                ),
                height: 60,
                width: 350,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: TextField(

                    style: TextStyle(
                      color: Colors.black87
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(top: 14),

                    ),
                  ),
                ),
              ),
                SizedBox(height: 10,),
                Align(alignment: Alignment.centerRight,
                  child:Text(
                    ''' كلمة المرور ''',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                )
                ,
                Container(
                  alignment: Alignment.centerRight,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            blurRadius: 6,
                            offset: Offset(0,2)
                        ),

                      ]
                  ),
                  height: 60,
                  width: 350,
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextField(

                      style: TextStyle(
                          color: Colors.black87
                      ),

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                          suffix: IconButton(onPressed: (){
                            setState(() {
                              pass = !pass;
                            });
                          }, icon: pass? Icon(Icons.visibility,color: Color(0xff53A4B1),) : Icon(Icons.visibility_off,color: Color(0xff53A4B1),) )

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),


              ],
            ),
          ),
      Padding(
        padding: const EdgeInsets.only(right:50),
        child: Directionality(
          textDirection: TextDirection.rtl,
            child: Text('نسيت كلمة المرور ؟',style: TextStyle(color: Color(0xff53A4B1),),)),
      ),
          SizedBox(height: 10, ),
          Padding(
            padding: const EdgeInsets.only(right: 100,left: 100),
            child: ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomNavgation()));
            },
              child:Text(' تسجيل الدخول',style: TextStyle(fontSize: 18),),
              style: ElevatedButton.styleFrom(


                  backgroundColor: Color(0xff53A4B1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13)
                  ),
                  minimumSize: Size(100,60)
              ),

            ),
          ),








        ],

      ),

    );
  }
}
