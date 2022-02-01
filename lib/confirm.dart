import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_shop_app/registration.dart';
class Confirm extends StatefulWidget {

  @override
  _ConfirmState createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {

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
          height: 300,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child:   Column(
            children: [
              Image.asset("assets/confirm.png"),
              SizedBox(height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(9.0),
                child: Text("You successfully reset your password. Now you are\n            "
                    "good to go"),
              ),

              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 40,right: 40),
                child: InkWell(
                  child: SizedBox(
                    height: 30,
                    width: 150,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (Context) =>Confirm ()));
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
                              child: Text("Save",
                                style: TextStyle(color: Colors.white,fontSize: 20),

                              ),
                            ),
                            )

                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}



