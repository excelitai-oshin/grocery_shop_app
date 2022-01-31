import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_shop_app/reset_password.dart';
class Registation extends StatefulWidget {

  @override
  _RegistationState createState() => _RegistationState();
}

class _RegistationState extends State<Registation> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image: Image.asset("assets/SignIn.png").image, fit: BoxFit.cover)),
        child: Center(
          child: FrostedGlassBox(

          ),
        ),
      ),
    );
  }
}

class FrostedGlassBox extends StatelessWidget {
  @override
  bool isChecked = false;
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Center(
        child: Container(
          width: 340,
          height: 480,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child:   Column(
            children: [
              Text('Sign Up',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(

                  decoration: InputDecoration(
                      hintText: "Name",
                      prefixIcon: Icon(Icons.person,color: Colors.grey,)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.mail,color: Colors.grey,)
                      //,suffixIcon: Icon(Icons.lock,color: Colors.grey,)
                  ),
                ),
              ),
              SizedBox(height: 10),


              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      prefixIcon: Icon(Icons.phone,color: Colors.grey,)
                    //  ,suffixIcon: Icon(Icons.lock,color: Colors.grey,)
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock,color: Colors.grey,)
                      ,suffixIcon: Icon(Icons.lock,color: Colors.grey,)
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock,color: Colors.grey,)
                      ,suffixIcon: Icon(Icons.lock,color: Colors.grey,)
                  ),
                ),
              ),



              Row(
                children: [
                  Transform.scale(
                    scale:0.7,
                    child: Checkbox(
                        value:isChecked,
                        onChanged: (bool newValue) {
                          isChecked =newValue;
                        }),
                  ),
                  Text("Remember me"),
                  SizedBox(width: 40,),
                ],
              ),
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: InkWell(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (Context) =>Reset_password ()));
                      // Respond to button press
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: new
                      RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Center(
                            child: Text("SIGIN IN",
                              style: TextStyle(color: Colors.white,fontSize: 20),

                            ),
                          ),)

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text("Already have an account ?",
                        style: TextStyle(color: Colors.grey,fontSize: 15),

                      ),

                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text("SIGN UP",
                        style: TextStyle(color: Colors.red,fontSize: 15),

                      ),

                    ),
                  ],
                ),
              ),


            ],
          ),
        ),




      ),
    );
  }
}



